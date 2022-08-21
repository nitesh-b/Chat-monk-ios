//
//  BaseViewController.swift
//  ChatMonk
//
//  Created by Nitesh Banskota on 20/8/2022.
//

import UIKit
import FirebaseAuth

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      authenticatationState()
    }
    
    func authenticatationState(){
        Auth.auth().addStateDidChangeListener { auth, user in
            if(auth.currentUser == nil){
                print("BaseViewController: User is not authnticated")
            }
        }
    }
    
    open func logoutUser(){
        try? Auth.auth().signOut()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
