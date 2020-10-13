//
//  ContentView.swift
//  HappyThingsLog
//
//  Created by Scott McCoy on 10/12/20.
//

import SwiftUI

struct EntryRow: View {
    var entry: Entry
    var body: some View {
        VStack(alignment:.leading) {
            Text(DateFormatService.singleton.string(from:entry.date)).bold()
            Text(entry.text)
        }.background(Calendar.current.isDateInWeekend(entry.date) ? Color.blue : Color.clear)
    }
}

struct ContentView: View {
    let entries:[Entry]
    
    var body: some View {
        return List(entries, rowContent: EntryRow.init)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(entries:DataStore.entries)
    }
}
