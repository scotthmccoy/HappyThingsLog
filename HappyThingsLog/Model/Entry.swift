//
//  Entry.swift
//  HappyThingsLog
//
//  Created by Scott McCoy on 10/12/20.
//

import Foundation

struct Entry:Identifiable {
    let id = UUID()
    var date:Date
    var text:String
}
