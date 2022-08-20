//
//  PersonViewModel.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 18/8/2022.
//

import Foundation

class PersonViewModel : BaseViewModel<Person>{

    private var personFirebaseRepository : PersonFirebaseRepository!
    override init() {
        super.init()
        self.personFirebaseRepository = PersonFirebaseRepository(observer: super.observer!)
    }
    
    func addObserver(){
        self.personFirebaseRepository.observePerson(query: FirebaseQueries.queryPerson(companyID: "QA--31145E81-5466-49D1-B523-040886F8F8EA"))
    }
    
    func removeObserver(){
        self.personFirebaseRepository.removeObserver()
    }
  
}
