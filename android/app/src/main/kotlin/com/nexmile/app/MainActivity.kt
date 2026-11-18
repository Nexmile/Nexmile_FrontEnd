package com.nexmile.app

import android.content.pm.PackageManager
import android.content.pm.Signature
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.security.MessageDigest

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        // What Dart needs to call Google Places with the same key the map
        // uses. The key is restricted to this app, so every request has to
        // name the package and the certificate it was signed with.
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "nexmile/app")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "identity" -> result.success(
                        mapOf(
                            "mapsKey" to mapsKey(),
                            "androidPackage" to packageName,
                            "androidCertSha1" to signingSha1(),
                        ),
                    )
                    else -> result.notImplemented()
                }
            }
    }

    /** The Maps key from the manifest, put there from android/maps.properties. */
    private fun mapsKey(): String? = try {
        packageManager
            .getApplicationInfo(packageName, PackageManager.GET_META_DATA)
            .metaData
            ?.getString("com.google.android.geo.API_KEY")
    } catch (e: Exception) {
        null
    }

    /**
     * SHA-1 of the certificate this install is signed with, as upper-case hex
     * without colons. Read at run time rather than written down, because the
     * Play Store re-signs the app with its own key.
     */
    private fun signingSha1(): String? = try {
        val signature: Signature? =
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                val info = packageManager
                    .getPackageInfo(packageName, PackageManager.GET_SIGNING_CERTIFICATES)
                    .signingInfo
                when {
                    info == null -> null
                    info.hasMultipleSigners() -> info.apkContentsSigners.firstOrNull()
                    // The current signer is the last in the rotation history.
                    else -> info.signingCertificateHistory.lastOrNull()
                }
            } else {
                @Suppress("DEPRECATION")
                packageManager
                    .getPackageInfo(packageName, PackageManager.GET_SIGNATURES)
                    .signatures
                    ?.firstOrNull()
            }
        signature?.let { sig ->
            MessageDigest.getInstance("SHA-1")
                .digest(sig.toByteArray())
                .joinToString("") { "%02X".format(it) }
        }
    } catch (e: Exception) {
        null
    }
}
