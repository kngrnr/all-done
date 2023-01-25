//
//  SelectedButton.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/24/23.
//

import Foundation

enum SelectedButton: String {
    case all = "All"
    case groceries = "Groceries"
    case work = "Work"
    case school = "School"
    case home = "Home"
    case personal = "Personal"
    case extra = "Extra"
    
    func getValue() -> String {
        return self.rawValue
    }
}
