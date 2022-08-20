//
//  GroupViewModel.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 19/8/2022.
//

import Foundation
class GroupViewModel : BaseViewModel<Group>{

    private var repository : GroupFirebaseRepository!
    override init() {
        super.init()
        self.repository = GroupFirebaseRepository(observer: super.observer!)
    }
    
    func addObserver(chatId: String){
        self.repository.addObserver(query: FirebaseQueries.queryGroup(chatId: chatId))
    }

    
    func removeObserver(){
        self.repository.removeObserver()
    }
}
