//
//  Entry.swift
//  HappyThingsLog
//
//  Created by Scott McCoy on 10/12/20.
//

import Foundation

struct LogEntry:Identifiable {
    let id = UUID()
    var date:Date
    var text:String
}
