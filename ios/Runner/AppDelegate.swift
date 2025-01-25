import UIKit
import Flutter
import YandexMapsMobile
@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      YMKMapKit.setLocale("uz_UZ") // Your preferred language. Not required, defaults to system language
         YMKMapKit.setApiKey("2c7fed63-bb37-4aa8-8552-1f2e82e4e21d") // Your generated API key
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
