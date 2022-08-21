//
//  Chat.swift
//  ChatMonk
//
//  Created by Nitesh Banskota on 20/8/2022.
//

import Foundation

class Chat : BaseModel{
    var ownerId : String
    var isGroup: Bool = false
    var lastMessage: String?

    
    enum CodingKeys: String, CodingKey{
        case ownerId
        case isGroup
        case lastMessage
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        ownerId = try values.decode(String.self, forKey: .ownerId)
        isGroup = try values.decode(Bool.self, forKey: .isGroup)
        lastMessage = try values.decode(String.self, forKey: .lastMessage)
        try super.init(from: decoder)
    }
}
