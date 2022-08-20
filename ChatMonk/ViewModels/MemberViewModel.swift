//
//  MemberViewModel.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 19/8/2022.
//

import Foundation
class MemberViewModel : BaseViewModel<Member>{

    private var repository : MemberFirebaseRepository!
    override init() {
        super.init()
        self.repository = MemberFirebaseRepository(observer: super.observer!)
    }
    
    func addObserver(userId: String){
        self.repository.addObserver(query: FirebaseQueries.queryMember(userId: userId))
    }

    
    func removeObserver(){
        self.repository.removeObserver()
    }
  
}
