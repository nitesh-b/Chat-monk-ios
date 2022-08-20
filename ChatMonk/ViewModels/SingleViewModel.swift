//
//  SingleViewModel.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 19/8/2022.
//

import Foundation
class SingleViewModel : BaseViewModel<Single>{

    private var repository : SingleFirebaseRepository!
    override init() {
        super.init()
        self.repository = SingleFirebaseRepository(observer: super.observer!)
    }
    
    func addObserver1(userId1: String){
        self.repository.addObserver(query: FirebaseQueries.querySingle1(userId: userId1))
    }
    func addObserver2(userId2: String){
        self.repository.addObserver(query: FirebaseQueries.querySingle2(userId: userId2))
    }
    
    func removeObserver(){
        self.repository.removeObserver()
    }
  
}
