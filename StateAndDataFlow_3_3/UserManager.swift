//
//  UserManager.swift
//  StateAndDataFlow_3_3
//
//  Created by Михаил Куприянов on 23.02.2022.
//

import Foundation
import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var userName = ""
}
