//
//  RegisterView.swift
//  StateAndDataFlow_3_3
//
//  Created by Михаил Куприянов on 23.02.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var userName = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name...", text: $userName)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !userName.isEmpty {
            user.userName = userName
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
