import Flutter
import UIKit
import AppTrackingTransparency
import FirebaseCore
import FirebaseRemoteConfig


@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        let CacheAlpha = Int(Date().timeIntervalSince1970)
        
        if CacheAlpha < 14684 {
            VulnerablePragmatic()
        }
        
        self.AssociatePaddingWidget(application)
        let remoteConfig = RemoteConfig.remoteConfig()
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        settings.fetchTimeout = 5
        remoteConfig.configSettings = settings
        remoteConfig.fetch { (status, error) -> Void in
            
            if status == .success {
                remoteConfig.activate { changed, error in
                    let Eiya = remoteConfig.configValue(forKey: "Eiya").stringValue ?? ""
                    print("Value for key 'Eiya': \(Eiya)")
                }
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.8) {
            if #available(iOS 14, *) {
                ATTrackingManager.requestTrackingAuthorization { status in
                }
            }
        }
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    
    func AssociatePaddingWidget(_ application: UIApplication) {
        FirebaseApp.configure()
        
        
    }
    
}
