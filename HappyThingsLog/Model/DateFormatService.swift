//
//  DateFormatService.swift
//  HappyThingsLog
//
//  Created by Scott McCoy on 10/12/20.
//

//Abstraction layer for DateFormat.
//Prevents their expensive re-creation and hides format strings.

import Foundation

class DateFormatService {
    static var singleton = DateFormatService()
    
    private let full = DateFormatter()
    
    init () {
        full.dateStyle = .full
    }
    
    func string(from:Date) -> String {
        return full.string(from: from)
    }

    func date(from:String) -> Date? {
        return full.date(from: from)
    }
    
}
