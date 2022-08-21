//
//  AppDelegateExtension.swift
//  ChatMonk
//
//  Created by Nitesh Banskota on 21/8/2022.
//

import UIKit
extension AppDelegate {
   static var shared: AppDelegate {
       return  UIApplication.shared.delegate as! AppDelegate
      
   }
var rootViewController: RootViewController {
      return window!.rootViewController as! RootViewController
   }

}
