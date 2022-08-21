//
//  SplashViewController.swift
//  ChatMonk
//
//  Created by Nitesh Banskota on 20/8/2022.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class SplashViewController : BaseViewController{
    
    private var personViewModel : PersonViewModel!
    private var persons = Users()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userAuthentication()
    }
    func userAuthentication(){
        if(Auth.auth().currentUser == nil){
            self.showLogInScreen()
        }
        
    }
    
    func showLogInScreen(){
        AppDelegate.shared.rootViewController.showLoginScreen()
    }
    
    func showPrimaryScreen(){
        
    }
    
    func updateData(){
        persons.removeAll()
        self.personViewModel = PersonViewModel()
        self.personViewModel.binder = { [self] person, type in
            if let person = person{
                switch type{
                case .added:
                    persons.append(person)
                case .modified:
                    if let index = persons.firstIndex(where: {$0.objectId == person.objectId}){
                        persons[index] = person
                    }
                    
                case .removed:
                    if let index = persons.firstIndex(where: {$0.objectId == person.objectId}){
                        persons.remove(at: index)
                    }
                }
                print(person.fullname! + " \(persons.count)")
            }
            
        }
    }



    
}
