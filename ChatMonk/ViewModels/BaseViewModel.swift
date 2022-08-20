//
//  BaseVIewModel.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 18/8/2022.
//

import Foundation
import FirebaseFirestore


struct Result<T>{
    var data: T?
    var type: DocumentChangeType
    var error : Error? = nil
}

class BaseViewModel<T: Codable> :  FireStoreDataObserver{
    
    var observer : FireStoreDataObserver?
     init(){
        self.observer = self
    }
    
    var binder : ((T?, DocumentChangeType) -> Void) = {_, _ in }
    private(set) var firebaseData : Result<T>? {
        didSet{
            if let firebaseData = firebaseData {
                self.binder(firebaseData.data, firebaseData.type)
            }
            
        }
    }
    
    func onAdded(data: Any?) {
        if let data = data as? T{
            firebaseData = Result(data: data, type: .added)
        }
    }
    
    func onModified(data: Any?) {
        if let data = data as? T{
            firebaseData = Result(data: data, type: .modified)
        }
    }
    
    func onRemoved(data: Any?) {
        if let data = data as? T{
            firebaseData = Result(data: data, type: .removed)
        }
    }
    
    func onError(error: Error?) {
        if let error = error{
            firebaseData = Result(data: nil, type: .added, error: error)
        }
    }
    
    
    
}
