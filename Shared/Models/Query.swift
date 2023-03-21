//
//  Query.swift
//  ChatGPTApp
//
//  Created by Mihai Dorhan on 20.03.2023.
//

import Foundation

struct Query: Identifiable, Hashable {
    let id = UUID()
    let question: String
    let answer: String
}
