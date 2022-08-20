//
//  DateExtension.swift
//  Talk&Text
//
//  Created by Nitesh Banskota on 17/8/2022.
//

import Foundation


extension Date {

    //---------------------------------Convert Date to Timestamp--------------------------------------------------------------------------------
    func timestamp() -> Int {
        return Int(self.timeIntervalSince1970)
    }
    //-------------------------------------------Convert timestamp To Date----------------------------------------------------------------------
    static func date(timestamp: Int) -> Date {
        return Date(timeIntervalSince1970: TimeInterval(timestamp))
    }
    //-------------------------------------------------------------------------------------------------------------------------------------------
}
