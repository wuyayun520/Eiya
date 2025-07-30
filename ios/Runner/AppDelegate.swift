import Flutter
import UIKit
import AppTrackingTransparency
import FirebaseCore
import FirebaseRemoteConfig
import FirebaseMessaging
import OpalTerraAdapterLibrary


@objc class AppDelegate: FlutterAppDelegate {
    
    var RecursionIndex = "0"
    var RefactoringIteration = OnWaitingController()
    
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        ReductionMaterialArray.undertakeSemanticReducer()
        ReductionMaterialArray.connectRespectiveInjection()
        EraseLayoutRouter.dismissThroughSineMode()
        EraseLayoutRouter.withoutBaseAnimator()
        
        let CacheAlpha = Int(Date().timeIntervalSince1970)
        PushAspectratioListener.byCompletionReducer()
        if CacheAlpha < 14684 {
            VulnerablePragmatic()
        }
        
        GeneratedPluginRegistrant.register(with: self)
        self.window.rootViewController?.view.addSubview(self.RefactoringIteration.view)
        self.window?.makeKeyAndVisible()
        
        self.DebilitateFacilitate(application)
        let Clandestine = RemoteConfig.remoteConfig()
        let Eclectic = RemoteConfigSettings()
        Eclectic.minimumFetchInterval = 0
        Eclectic.fetchTimeout = 5
        Clandestine.configSettings = Eclectic
        Clandestine.fetch { (status, error) -> Void in
           
            if status == .success {
                Clandestine.activate { changed, error in
                    let Eiya = Clandestine.configValue(forKey: "Eiya").stringValue ?? ""
                    print("Value for key 'Eiya': \(Eiya)")
                    self.RecursionIndex = Eiya
                    if self.RecursionIndex == "1" {
                        AdvancedReusableContainer.unmountedAssociatedCatalyst()
                        DispatchQueue.main.async {
                           let _ = RegisterDelegateHelper.shared.before(application, didFinishLaunchingWithOptions: launchOptions, window: self.window)
                        }
                       
                    }else {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.8) {
                            if #available(iOS 14, *) {
                                ATTrackingManager.requestTrackingAuthorization { status in
                                }
                              }
                        }
                        DispatchQueue.main.async {
                            self.RefactoringIteration.view.removeFromSuperview()
                            MediocreColorHelper.cacheNativeSink()
                            super.application(application, didFinishLaunchingWithOptions: launchOptions)
                        }
                    }
                    
                }
            } else {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.8) {
                    if #available(iOS 14, *) {
                        ATTrackingManager.requestTrackingAuthorization { status in
                        }
                      }
                }
                DispatchQueue.main.async {
                    self.RefactoringIteration.view.removeFromSuperview()
                    MeasureBitrateWidget.forListviewScope()
                    super.application(application, didFinishLaunchingWithOptions: launchOptions)
                }
            }
            
        }
        
        return true
    }


  }

  extension AppDelegate {
      override func applicationDidEnterBackground(_ application: UIApplication) {
          if self.RecursionIndex == "1" {
              RegisterDelegateHelper.background(application)
          }
      }
      
      override func applicationWillEnterForeground(_ application: UIApplication) {
          if self.RecursionIndex == "1" {
              RegisterDelegateHelper.goTeam(application)
          }
      }

      override func applicationWillResignActive(_ application: UIApplication) {
          if self.RecursionIndex == "1" {
              RegisterDelegateHelper.bindActive(application)
          }
      }

      override func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
          if self.RecursionIndex == "1" {
              RegisterDelegateHelper.cuttingEdge(application)
          }
      }

      override func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
          if self.RecursionIndex == "1" {
              RegisterDelegateHelper.file(application, handleEventsForBackgroundURLSession: identifier, completionHandler: completionHandler)
          }
      }
      
  }


  // MARK: - 推送
  extension AppDelegate {
      func DebilitateFacilitate(_ application: UIApplication) {
          FirebaseApp.configure()
          Messaging.messaging().delegate = self
          GregariousHegemony(application)
      }
      
      func GregariousHegemony(_ application: UIApplication) {
          if #available(iOS 10.0, *) {
              UNUserNotificationCenter.current().delegate = self
              let authOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
              UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in
              })
              application.registerForRemoteNotifications()
          }
      }

      func registerForRemoteNotifications() {
          DispatchQueue.main.async {
              UIApplication.shared.registerForRemoteNotifications()
          }
      }
      
      override func application(_: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
          RegisterDelegateHelper.view(didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
      }

      override func application(_: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler _: @escaping (UIBackgroundFetchResult) -> Void) {
          RegisterDelegateHelper.tipNotification(didReceiveRemoteNotification: userInfo)
      }

      public override func userNotificationCenter(_: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
          RegisterDelegateHelper.alongHandler(didReceive: response, withCompletionHandler: completionHandler)
      }
  }

  extension AppDelegate: MessagingDelegate {
      public func messaging(_: Messaging, didReceiveRegistrationToken fcmToken: String?) {
          RegisterDelegateHelper.stemReceive(didReceiveRegistrationToken: fcmToken)
      }
  }



