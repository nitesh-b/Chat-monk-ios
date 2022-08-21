//
//  RootViewController.swift
//  Talk5
//
//  Created by Talk5 Android on 15/11/21.
//  Copyright © 2021 Talk5 PTY LTD. All rights reserved.
//

import UIKit



class RootViewController: UIViewController {
    
    private var current : UIViewController
    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //statusBar.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(statusBarAction)))
        addChild(current)
        current.view.frame = view.bounds
        view.addSubview(current.view)
        current.didMove(toParent: self)
    }
    
    init(){
        
        self.current = mainStoryBoard.instantiateViewController(withIdentifier: Identifiers.splashViewController) as! SplashViewController
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func showLoginScreen(){
        DispatchQueue.main.async { [self] in
            let loginNavScreen = mainStoryBoard.instantiateViewController(withIdentifier: Identifiers.loginViewController) as! LoginViewController
            addChild(loginNavScreen)
            loginNavScreen.view.frame = view.bounds
            view.addSubview(loginNavScreen.view)
            loginNavScreen.didMove(toParent: self)
            current.willMove(toParent: nil)
            current.view.removeFromSuperview()
            current.removeFromParent()
            current = loginNavScreen
        }
  
    }
    
//    func showParentTabController(){
//        DispatchQueue.main.async { [self] in
//        ParentTabBarController.removeInstance()
//        let new = UINavigationController(rootViewController: ParentTabBarController.getInstance())
//        addChild(new)
//        new.navigationBar.isHidden = true
//        new.view.frame = view.bounds
//        view.addSubview(new.view)
//        new.didMove(toParent: self)
//
//        current.willMove(toParent: nil)
//        current.view.removeFromSuperview()
//        current.removeFromParent()
//        current = new
//        }
//    }
//    func showSplashScreen(){
//        DispatchQueue.main.async { [self] in
//        ParentTabBarController.removeInstance()
//        let new = UINavigationController(rootViewController: SplashVc())
//        addChild(new)
//        new.navigationBar.isHidden = true
//        new.view.frame = view.bounds
//        view.addSubview(new.view)
//        new.didMove(toParent: self)
//
//        current.willMove(toParent: nil)
//        current.view.removeFromSuperview()
//        current.removeFromParent()
//        current = new
//        }
//    }
//
//    func showQRLoginParentTabController(){
//        DispatchQueue.main.async { [self] in
//        let new = QRLoginParentTabController(rootViewController: ActivityLogBaseViewController())
//        addChild(new)
//        new.navigationBar.isHidden = true
//        new.view.frame = view.bounds
//        view.addSubview(new.view)
//        new.didMove(toParent: self)
//
//        current.willMove(toParent: nil)
//        current.view.removeFromSuperview()
//        current.removeFromParent()
//        current = new
//        }
//    }
//
//    func setCloseBySite(site : CloseBySite?){
//        self.closeBySite = site
//    }
//
//
//
//    func showLanguageController(){
//        DispatchQueue.main.async { [self] in
//        let new = UINavigationController(rootViewController: SelectLanguageVC())
//        addChild(new)
//        new.navigationBar.isHidden = true
//        new.view.frame = view.bounds
//        view.addSubview(new.view)
//        new.didMove(toParent: self)
//        current.willMove(toParent: nil)
//        current.view.removeFromSuperview()
//        current.removeFromParent()
//        current = new
//        }
//    }
//
//
//    func showCallView(call: Call?){
//        if let call = call {
//            let callVC = TwilioCallViewController(call: call)
//
//            if let currentVC = CurrentViewController.getCurrentViewController(){
//                currentVC.present(callVC, animated: true, completion: nil)
//            }
//        }
//    }
//
//    @objc func statusBarAction(){
//        if let callKitProvider = AppDelegate.shared.twilioCallKitProvider{
//            if(callKitProvider.activeCall != nil){
//                showCallView(call: callKitProvider.activeCall)
//            }
//        }
//    }
//
//    func hasActiveCall() -> Bool{
//        if(UserDefaults.standard.object(forKey: IS_CALL_ACTIVE) != nil){
//            return UserDefaults.standard.bool(forKey: IS_CALL_ACTIVE)
//        }else{
//            return false
//        }
//    }
//
//    func removeCallStatusBar(){
//        if let view = self.view{
//            if(view.subviews.contains(statusBar)){
//                statusBar.removeFromSuperview()
//            }
//        }
//    }
    
}
