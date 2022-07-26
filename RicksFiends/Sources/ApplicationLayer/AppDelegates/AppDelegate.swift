//
// RicksFiends
// 
//

import UIKit

class AppDelegate: AppDelegateHandler {
    var window: UIWindow?
    var rootViewController: UIViewController!

    var didFinishLaunchingHandler: (() -> ())!

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        didFinishLaunchingHandler()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()

        if let viewController = rootViewController as? TabBarViewController {
            viewController.moduleInput.setupTabBarControllers()
        }

        return true
    }
}
