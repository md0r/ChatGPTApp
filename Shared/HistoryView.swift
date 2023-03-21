//
//  HistoryView.swift
//  ChatGPTApp
//
//  Created by Mihai Dorhan on 20.03.2023.
//

import SwiftUI

struct HistoryView: View {
    
    @EnvironmentObject private var model: Model
    @Environment(\.dismiss) private var dismiss
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "dateCreated", ascending: true)]) private var historyItemResults: FetchedResults<HistoryItem>
    
    var body: some View {
        List(historyItemResults) { item in
            Text(item.question ?? "")
                .frame(maxWidth: .infinity, alignment: .leading)
                .contentShape(Rectangle())
                .onTapGesture {
                    model.query = Query(question: item.question ?? "", answer: item.answer ?? "")
                    #if os(iOS)
                    dismiss()
                    #endif
                }
        }
    }
}


