import Flutter
import GoogleMaps
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // The key comes from ios/Flutter/Secrets.xcconfig through Info.plist. A
    // build without that file has an empty key, and the map draws grey.
    if let key = Bundle.main.object(forInfoDictionaryKey: "GMSApiKey") as? String,
       !key.isEmpty {
      GMSServices.provideAPIKey(key)
    }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)

    // What Dart needs to call Google Places with the same key the map uses.
    // The key is restricted to this app, so requests name its bundle id.
    if let registrar = engineBridge.pluginRegistry.registrar(forPlugin: "NexmileAppIdentity") {
      let channel = FlutterMethodChannel(
        name: "nexmile/app",
        binaryMessenger: registrar.messenger()
      )
      channel.setMethodCallHandler { call, result in
        switch call.method {
        case "identity":
          result([
            "mapsKey": Bundle.main.object(forInfoDictionaryKey: "GMSApiKey") as? String ?? "",
            "iosBundleId": Bundle.main.bundleIdentifier ?? "",
          ])
        default:
          result(FlutterMethodNotImplemented)
        }
      }
    }
  }
}
