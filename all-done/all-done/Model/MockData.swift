//
//  MockData.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/25/23.
//

import Foundation

let appUser01 = AppUser(id: "1", uid: "1", firstName: "John", lastName: "Parker", email: "johnparker@gmail.com")

let todo01 = TODO(id: "1", ownerID: "1", title: "Tomatoes", description: "Must be from publix", TODOType: "Groceries", completed: false)
let todo02 = TODO(id: "2", ownerID: "2", title: "Meat", description: "Clean meat", TODOType: "Groceries", completed: true)
let todo03 = TODO(id: "3", ownerID: "3", title: "Do Homework", description: "", TODOType: "School", completed: false)
