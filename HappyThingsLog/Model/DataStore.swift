//
//  DataStore.swift
//  HappyThingsLog
//
//  Created by Scott McCoy on 10/12/20.
//

import Foundation

class DataStore {
    static let entries = [
        LogEntry(
            date: DateFormatService.singleton.date(from: "Monday, October 12, 2020")!,
            
            text:"Woke up on time and got a full workout and a meditation done. The weather was nice. Meeting with Chai and Dinesh went better than expected and they're ready to move to phase 2. The New episode of King's Castle was pretty funny."
        ),
        
        LogEntry(
            date: DateFormatService.singleton.date(from: "Sunday, October 11, 2020")!,
            text:"Saw a nice cloud! Jamie texted me back, finally, and had good things to say about how the project is going."
        ),
        
        LogEntry(
            date: DateFormatService.singleton.date(from: "Saturday, October 10, 2020")!,
            text: "Had a rough morning but managed to subdue the brain weasels. Coffee helped. Exercise and mindfulness helped a bit more."
        ),
        
        LogEntry(
            date: DateFormatService.singleton.date(from: "Friday, October 9, 2020")!,
            text: "TGIF! Treated myself to pancakes. It's still hard to stay focused while working from home but going for a walk in the morning is helping. Saw a cute cat!!"
        ),
        
        LogEntry(
            date: DateFormatService.singleton.date(from: "thursday, October 8, 2020")!,
            text: "One of the islanders gave me a new hat that looks super cool. I should really be playing AC less but it makes me happy, so whatever. "
        ),
    ]
}
