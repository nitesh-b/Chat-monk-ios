//
//  MemberFirebaseRepository.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 19/8/2022.
//

import Foundation
import FirebaseFirestore
class MemberFirebaseRepository : BaseFirebaseRepository<Member>{
    private var observer : FireStoreDataObserver
    init(observer: FireStoreDataObserver){
        self.observer = observer
    }
    
     func addObserver(query:  FirebaseFirestore.Query){
        super.snapshotListener(query: query, to: Member.self, observer: observer)
    }
    
    override func removeObserver(){
        super.removeObserver()
    }
    
}
