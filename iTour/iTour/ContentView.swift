//
//  ContentView.swift
//  iTour
//
//  Created by Kevin Martinez on 10/13/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment (\.modelContext) var modelContex
    
    @State private var path = [Destination]()
    @State private var sortOrder = SortDescriptor(\Destination.name)
    @State private var searchText = ""
    
    
    var body: some View {
        NavigationStack (path: $path) {
            
            DestinationListingView(sort: sortOrder, searchString: searchText)
                .navigationTitle("iTour")
                .navigationDestination(for: Destination.self, destination: EditDestinationView.init)
                .searchable(text: $searchText)
                .toolbar {
                    // Button("Add Sample", action: addSamples)
                    Button("Add Destination", systemImage: "plus", action: addDestination)
                    
                    Menu("Sort", systemImage: "arrow.up.arrow.down") {
                        Picker("Sort", selection: $sortOrder) {
                            Text("Name")
                                .tag(SortDescriptor(\Destination.name))
                            Text("Priority")
                                .tag(SortDescriptor(\Destination.priority, order: .reverse))
                            
                            Text("Date")
                                .tag(SortDescriptor(\Destination.date))
                            
                        }
                    
                    }
                }
        }
    }
    
    
    //    func addSamples() {
    //        let rome = Destination(name: "Rome")
    //        let florence = Destination(name: "Florence")
    //        let naples = Destination(name: "Naples")
    //
    //
    //        modelContex.insert(rome)
    //        modelContex.insert(florence)
    //        modelContex.insert(naples)
    //
    //    }
    
    func addDestination() {
        let destination = Destination()
        modelContex.insert(destination)
        path = [destination]
    }
    
    
    
    
    
    
}

#Preview {
    ContentView()
}


/*
 
 Steps for Soting
 
 1. Make some storage here to hold whatever is the user's current sort order so it's customizable
 2. Add some UI to content View so you can change the order based on what the user actually wants to have.
 3. Upgrade this new listing view here (DestinationListingView) to give the sort Order to use.
 4. make its preview send an example so ordering.
 5. pass the sort order into the DestinationListingView.
 
 
 */
