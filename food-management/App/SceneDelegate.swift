//
//  SceneDelegate.swift
//  food-management
//
//  Created by 준수김 on 2021/09/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        callBackgroundImage(false)
    }

    func sceneWillResignActive(_ scene: UIScene) {
        callBackgroundImage(true)
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        callBackgroundImage(false)
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        callBackgroundImage(true)
    }
    func callBackgroundImage(_ bShow: Bool) {
            
            let TAG_BG_IMG = -101

            let backgroundView = window?.rootViewController?.view.window?.viewWithTag(TAG_BG_IMG)

            if bShow {

                if backgroundView == nil {

                    //여기서 보여주고 싶은 뷰 자유롭게 생성
                    let bgView = UIView()
                    bgView.frame = UIScreen.main.bounds
                    bgView.tag = TAG_BG_IMG
                    bgView.backgroundColor = .black

                    let lbl = UILabel()
                    lbl.frame = UIScreen.main.bounds
                    lbl.textAlignment = .center
                    lbl.font = UIFont.systemFont(ofSize: 30)
                    lbl.textColor = .white
                    lbl.numberOfLines = 0
                    lbl.text = "개인 건강은 중요한 개인 정보입니다."
                    bgView.addSubview(lbl)

                    window?.rootViewController?.view.window?.addSubview(bgView)
                }
            } else {

                if let backgroundView = backgroundView {
                    backgroundView.removeFromSuperview()
                }
            }
        }

}

