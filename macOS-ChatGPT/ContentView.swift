//
//  ContentView.swift
//  macOS-ChatGPT
//
//  Created by Mihai Dorhan on 20.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            HistoryView()
        } detail: {
            MainView()
        }
    }
}


