//
//  FirebaseSetting.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 18/8/2022.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

class FirebaseSetting{
     static let shared = FirebaseSetting()
    
    init(){
        configure()
    }
    func configure(){
        FirebaseApp.configure()
        let settings = FirestoreSettings()
        settings.isPersistenceEnabled = true
        settings.cacheSizeBytes = FirestoreCacheSizeUnlimited
        Firestore.firestore().settings = settings
    }
    
}
