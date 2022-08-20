//
//  FirebaseQueries.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 18/8/2022.
//

import Foundation
import FirebaseFirestore
class FirebaseQueries{
    
    class func queryPerson(companyID: String) -> FirebaseFirestore.Query{
        return Firestore.firestore().collection("Person").whereField("companyId", isEqualTo: companyID)
    }
    
    class func querySingle1(userId: String) -> FirebaseFirestore.Query{
        return Firestore.firestore().collection("Single").whereField("userId1", isEqualTo: userId)
    }
    
    class func querySingle2(userId: String) -> FirebaseFirestore.Query{
        return Firestore.firestore().collection("Single").whereField("userId2", isEqualTo: userId)
    }
    
    class func queryGroup(chatId: String) -> FirebaseFirestore.Query{
        return Firestore.firestore().collection("Group").whereField("chatId", isEqualTo: chatId)
    }
    
    class func queryDetail(chatId: String) -> FirebaseFirestore.Query{
        return Firestore.firestore().collection("Detail").whereField("chatId", isEqualTo: chatId)
    }
    
    class func queryMember(userId: String) -> FirebaseFirestore.Query{
        return Firestore.firestore().collection("Member").whereField("userId", isEqualTo: userId)
    }
    
    class func queryMessage(chatId: String) -> FirebaseFirestore.Query{
        
      return Firestore.firestore().collection("Message")
           .whereField("chatId", isEqualTo: chatId)
           .order(by: "updatedAt", descending: true)
           .limit(to: 20)
    }
    

    
  
    
}
