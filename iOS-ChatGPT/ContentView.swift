//
//  ContentView.swift
//  iOS-ChatGPT
//
//  Created by Mihai Dorhan on 20.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            MainView()
            .sheet(isPresented: $isPresented) {
                NavigationStack {
                    HistoryView()
                        .navigationTitle("History")
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented = true
                    } label: {
                        Text("Show History")
                    }
                }
            }
        }
    }
}


