//
//  String + Extensions.swift
//  ChatGPTApp
//
//  Created by Mihai Dorhan on 20.03.2023.
//

import Foundation

extension String {
    
    var isEmptyOrWhiteSpace: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
}
