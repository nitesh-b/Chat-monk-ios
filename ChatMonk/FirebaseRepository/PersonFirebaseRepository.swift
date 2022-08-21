//
//  PersonFirebaseService.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 18/8/2022.
//

import FirebaseFirestore

class PersonFirebaseRepository : BaseFirebaseRepository<User>{
    private var observer : FireStoreDataObserver
    init(observer: FireStoreDataObserver){
        self.observer = observer
    }
    
     func observePerson(query:  FirebaseFirestore.Query){
        super.snapshotListener(query: query, to: User.self, observer: observer)
    }
    
    override func removeObserver(){
        super.removeObserver()
    }
    
}
