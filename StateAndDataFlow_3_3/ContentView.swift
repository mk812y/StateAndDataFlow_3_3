//
//  ContentView.swift
//  StateAndDataFlow_3_3
//
//  Created by Михаил Куприянов on 23.02.2022.
//

import SwiftUI
//не успеваю доделать

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(user.userName)")
                .font(.largeTitle)
//                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
            ButtonView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}



