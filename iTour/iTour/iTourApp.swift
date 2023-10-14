//
//  iTourApp.swift
//  iTour
//
//  Created by Kevin Martinez on 10/13/23.
//

import SwiftUI
import SwiftData

@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Destination.self)
    }
}


// TODO:

/*
 
 1. swipe to delete individual sights
 
 2. use an array of sort desciptors to initialize the editing your listen listing View,
    With the first one being the user's choice so they chose priority of date or name,
    but the secound one being a sensible alternative so it's priority they've chosen
    but then name hidden afterwards
 
 3. Add a secound picker to the toolbar in the top bar, so user can say show me all
    destinations only ones that are in the future.
 
 
 */
