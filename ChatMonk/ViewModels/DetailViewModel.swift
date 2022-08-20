//
//  DetailViewModel.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 19/8/2022.
//

import Foundation
class DetailViewModel : BaseViewModel<Detail>{

    private var repository : DetailFirebaseRepository!
    override init() {
        super.init()
        self.repository = DetailFirebaseRepository(observer: super.observer!)
    }
    
    func addObserver(chatId: String){
        self.repository.addObserver(query: FirebaseQueries.queryDetail(chatId: chatId))
    }

    
    func removeObserver(){
        self.repository.removeObserver()
    }
}
