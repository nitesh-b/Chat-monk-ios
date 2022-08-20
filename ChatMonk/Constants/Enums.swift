//
//  Enums.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 18/8/2022.
//

import Foundation
import FirebaseFirestore
enum KeepMedia {

    static let Week        = 1
    static let Month    = 2
    static let Forever    = 3
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
enum Network {

    static let Manual    = 1
    static let WiFi        = 2
    static let All        = 3
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
enum MediaType {

    static let Photo    = 1
    static let Video    = 2
    static let Audio    = 3
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
enum MediaStatus {

    static let Unknown    = 0
    static let Loading    = 1
    static let Manual    = 2
    static let Succeed    = 3
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
enum AudioStatus {

    static let Stopped    = 1
    static let Playing    = 2
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
enum App {

    static let DefaultTab            = 0
    static let MaxVideoDuration        = TimeInterval(10)
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
enum FirestoreDataType {

    static let ADDED            = "added"
    static let MODIFIED            = "modified"
    static let REMOVED            = "removed"
}
