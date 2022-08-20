//
//  DetailFirebaseRepository.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 19/8/2022.
//

import Foundation
import FirebaseFirestore
class DetailFirebaseRepository : BaseFirebaseRepository<Detail>{
    private var observer : FireStoreDataObserver
    init(observer: FireStoreDataObserver){
        self.observer = observer
    }
    
     func addObserver(query:  FirebaseFirestore.Query){
        super.snapshotListener(query: query, to: Detail.self, observer: observer)
    }
    
    override func removeObserver(){
        super.removeObserver()
    }
    
}

