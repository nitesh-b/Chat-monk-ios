//
//  ViewController.swift
//  ChatMonk
//
//  Created by Nitesh Banskota on 20/8/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userAuthentication()
    }
    func userAuthentication(){
        let accessToken = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiJkM2VmM2U0Ny02NzA1LTQwZTMtYmJhMS1kNGVjNmYwOTA0YTgiLCJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay01dmlueUBxYS10YWxrNXB0eWx0ZC5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInN1YiI6ImZpcmViYXNlLWFkbWluc2RrLTV2aW55QHFhLXRhbGs1cHR5bHRkLmlhbS5nc2VydmljZWFjY291bnQuY29tIiwiYXVkIjoiaHR0cHM6Ly9pZGVudGl0eXRvb2xraXQuZ29vZ2xlYXBpcy5jb20vZ29vZ2xlLmlkZW50aXR5LmlkZW50aXR5dG9vbGtpdC52MS5JZGVudGl0eVRvb2xraXQiLCJleHAiOjE2NjA4MTExNDgsImlhdCI6MTY2MDgwNzU0OH0.fKoZWfPyZoUe4KWJuRcuNHWJY854F5X0BCpJiTP7BwX48HkcxVe9aBghPfk-P1WKHEGj-LruWCxj46C4YxA7u5Oj7r77qXTeGaQvlxsM4VI-ZQqakDpte68d7AJtF4i_hdHsC-_E1bgc1PUofZZkg17OVvlGTVyuctigMCtlM931-sOzKsDIGhXjPEgw4QJpgot3JztydijD-vaVb1LVAzUyPan-dll_eku3uPHFOSpQL295fjxZ5Lz5uHHSrh0ikZkB116kOPgQfwwyoI9FYM5A-uFNZ5VeGZnr2DSOP5iF_qOXP3WiD9uCWMt1PwoYxYdALL6gcopexBvn6kzzvg"
        Auth.auth().signIn(withCustomToken: accessToken) { [weak self] authResult, error in
            guard authResult != nil else {
                debugPrint("Failed logged in to firebase")
                return
            }
            debugPrint("SuccessFully logged in to firebase")
            self!.updateData()
            
        }
        
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

