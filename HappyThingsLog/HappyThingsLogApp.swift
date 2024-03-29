//
//  HappyThingsLogApp.swift
//  HappyThingsLog
//
//  Created by Scott McCoy on 10/12/20.
//

import SwiftUI

@main
struct HappyThingsLogApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(entries: DataStore.entries)
        }
    }
}

struct HappyThingsLogApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(entries: DataStore.entries)
    }
}
