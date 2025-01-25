package uz.appxtechgroup.presidentftinc.flutter.upqayt

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate() {
        super.onCreate()
        MapKitFactory.setLocale("uz_UZ") // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("2c7fed63-bb37-4aa8-8552-1f2e82e4e21d") // Your generated API key
    }
}
