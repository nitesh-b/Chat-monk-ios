//
//  MessageViewModel.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 19/8/2022.
//

import Foundation
class MessageViewModel : BaseViewModel<Message>{

    private var repository : MessageFirebaseRepository!
    override init() {
        super.init()
        self.repository = MessageFirebaseRepository(observer: super.observer!)
    }
    
    func addObserver(chatId: String){
        self.repository.addObserver(query: FirebaseQueries.queryMessage(chatId: chatId))
    }

    
    func removeObserver(){
        self.repository.removeObserver()
    }
}
