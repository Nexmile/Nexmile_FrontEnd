import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../../../generated/l10n/app_localizations.dart';
import '../../catalogue/presentation/widgets/voice_search_sheet.dart';

/// Talking to the support assistant: the question in by voice, the reply
/// read aloud.
///
/// Both run on the phone's own engines (speech recognition and
/// text-to-speech, ta-IN, en-IN and the rest), so no audio is uploaded and
/// nothing is billed. The chat itself does not change: what is heard is sent
/// as an ordinary message, and the reply is ordinary text that happens to be
/// spoken. Behind an interface so the chat can be tested without a
/// microphone or a speaker.
abstract class SupportVoice {
  /// Listens for a question in [language] (a code such as `ta`). The words
  /// heard; an empty string when the customer spoke but nothing was
  /// recognised, so the chat can offer typing instead; null when they
  /// cancelled or voice could not be used, which the listening sheet has
  /// already said.
  Future<String?> listen(BuildContext context, {String? language});

  /// Reads [text] aloud in [language], as the reply with [id], replacing
  /// anything already being read.
  Future<void> speak(String id, String text, {String? language});

  Future<void> stop();

  /// The id of the reply being read now, or null.
  ValueListenable<String?> get speaking;
}

/// The phone's microphone and speaker.
class DeviceSupportVoice implements SupportVoice {
  DeviceSupportVoice();

  FlutterTts? _tts;
  final ValueNotifier<String?> _speaking = ValueNotifier<String?>(null);

  /// Made on first use, so a customer who never talks to the assistant never
  /// starts the speech engine.
  FlutterTts get _engine => _tts ??= FlutterTts()
    ..setCompletionHandler(_done)
    ..setCancelHandler(_done)
    ..setErrorHandler((Object? _) => _done());

  void _done() => _speaking.value = null;

  @override
  ValueListenable<String?> get speaking => _speaking;

  @override
  Future<String?> listen(BuildContext context, {String? language}) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return showVoiceInputSheet(
      context,
      language: language,
      listeningTitle: l10n.supportVoiceListening,
      hint: l10n.supportVoiceHint,
      actionLabel: l10n.supportSend,
      unavailableTitle: l10n.supportVoiceNotHeard,
      deniedBody: l10n.supportVoiceMicDenied,
    );
  }

  @override
  Future<void> speak(String id, String text, {String? language}) async {
    final FlutterTts tts = _engine;
    try {
      await tts.stop();
      await _throughSpeaker(tts);
      final String tag = speechLocale(language);
      // Indian English when this phone has no voice for the language, so a
      // reply is read in some voice rather than silently not at all.
      final Object? available = await tts.isLanguageAvailable(tag);
      await tts.setLanguage(available == true ? tag : 'en-IN');
      _speaking.value = id;
      await tts.speak(text);
    } catch (_) {
      _done();
    }
  }

  /// On an iPhone, reads through the speaker even with the ring switch on
  /// silent, as a navigation prompt does, and lowers any music meanwhile.
  /// Without this iOS stays in its default audio mode, which the silent
  /// switch mutes. Set before every reply, because listening for a question
  /// switches the phone's audio over to recording.
  Future<void> _throughSpeaker(FlutterTts tts) async {
    if (defaultTargetPlatform != TargetPlatform.iOS) return;
    await tts.setSharedInstance(true);
    await tts.setIosAudioCategory(
      IosTextToSpeechAudioCategory.playback,
      <IosTextToSpeechAudioCategoryOptions>[
        IosTextToSpeechAudioCategoryOptions.duckOthers,
      ],
      IosTextToSpeechAudioMode.voicePrompt,
    );
  }

  @override
  Future<void> stop() async {
    try {
      await _tts?.stop();
    } catch (_) {
      // Nothing playing to stop.
    }
    _done();
  }
}

/// The Indian locale for a language code: `ta` → `ta-IN`, `en` → `en-IN`.
/// Null means the app's default, English.
String speechLocale(String? language) {
  final String code =
      (language ?? 'en').split(RegExp('[-_]')).first.toLowerCase();
  return '${code.isEmpty ? 'en' : code}-IN';
}
