//
//  BaseFirebaseService.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 18/8/2022.
//

import Foundation
import FirebaseFirestore

protocol FireStoreDataObserver{
    func onAdded(data: Any?)
    func onModified(data: Any?)
    func onRemoved(data: Any?)
    func onError(error: Error?)
}

class BaseFirebaseRepository<T: Codable> : NSObject {
    var listener : ListenerRegistration?
    func removeObserver() {
        listener?.remove()
        listener = nil
    }
    
  
    func snapshotListener(query: FirebaseFirestore.Query, to type: T.Type, observer: FireStoreDataObserver){
        listener = query.addSnapshotListener(includeMetadataChanges: true, listener: { snapshot, error in
            guard let snapshot = snapshot else {
                    observer.onError(error: error)
                    return
                   }
            var decodedData : T?
            snapshot.documentChanges.forEach { documentChange in
                
                do {
                    let json = try JSONSerialization.data(withJSONObject: documentChange.document.data())
                    let decoder = JSONDecoder()
                   // decoder.keyDecodingStrategy = .convertFromSnakeCase
                    decodedData  = try decoder.decode(T.self, from: json)
                } catch(let error) {
                    observer.onError(error: error)
                    return
                }
                
                switch documentChange.type{
                case .added:
                    observer.onAdded(data: decodedData)
                case .modified:
                    observer.onModified(data: decodedData)
                case .removed:
                    observer.onRemoved(data: decodedData)
                }
            }
              
        })
    }
    
}
