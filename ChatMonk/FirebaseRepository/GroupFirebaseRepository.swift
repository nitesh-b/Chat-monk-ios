//
//  GroupFirebaseRepository.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 19/8/2022.
//

import Foundation
import FirebaseFirestore

class GroupFirebaseRepository : BaseFirebaseRepository<Group>{
    private var observer : FireStoreDataObserver
    init(observer: FireStoreDataObserver){
        self.observer = observer
    }
    
     func addObserver(query:  FirebaseFirestore.Query){
        super.snapshotListener(query: query, to: Group.self, observer: observer)
    }
    
}
