//
//  ContentView.swift
//  SwipeActionList
//
//  Created by Alexandre Talatinian on 14/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var nameList = ["Cancer", "Capricorne", "Sagittaire", "Taureau", "Balance"]
    
    var body: some View {
        VStack {
            List {
                ForEach(nameList, id: \.self) { name in
                    Text(name)
                        .padding()
                    
                    // SWIPE ACTION 1
                        .swipeActions {
                            Button(role: .destructive) {
                                // code to delete
                            } label: {
                                Label("delete", systemImage: "trash")
                            }
                        }
                    
                    // SWIPE ACTION 2
                        .swipeActions {
                            Button {
                                // code to edit
                            } label: {
                                Label("edit", systemImage: "square.and.pencil")
                            }
                            .tint(.blue)
                        }
                    
                    // SWIPE ACTION 3
                        .swipeActions(edge: .leading) {
                            Button {
                                // code for mic
                            } label: {
                                Label("mic", systemImage: "mic")
                            }
                            .tint(.green)
                        }
                }
            } // LIST
        } // VSTACK
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
