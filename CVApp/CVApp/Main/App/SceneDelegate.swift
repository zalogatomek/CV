//
//  Created by Tomasz Załoga on 21/03/2020.
//  

import UIKit
import SwiftUI

// TODO: Use DI
import CVStatic

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions)
    {
        // TODO: Use DI
        let cvUseCase = CVStaticFactory.createCvUseCase()
        let contentView = ContentView(cvUseCase: cvUseCase)

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
