//
//  ContentView.swift
//  HappyThingsLog
//
//  Created by Scott McCoy on 10/12/20.
//

import SwiftUI

struct EntryRow: View {
    var entry: LogEntry
    var body: some View {
        VStack(alignment:.leading) {
            Text(DateFormatService.singleton.string(from:entry.date)).bold()
            Text(entry.text)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            Calendar.current.isDateInWeekend(entry.date) ? Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)) : Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        )
        .cornerRadius(10)
    }
}

struct ContentView: View {
    let entries:[LogEntry]
    var body: some View {
        VStack {
            HStack {
                Text("75% Complete")
                Text("100% Hit Rate")
                Button("+") {
                    print("Add New Entry")
                }
            }
            List {
                ForEach(entries) { entry in
                    EntryRow(entry: entry)
                }
            }.listStyle(SidebarListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(entries:DataStore.entries)
    }
}
