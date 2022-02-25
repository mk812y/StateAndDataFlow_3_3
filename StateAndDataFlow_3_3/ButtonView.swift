//
//  ButtonView.swift
//  StateAndDataFlow_3_3
//
//  Created by Михаил Куприянов on 23.02.2022.
//

import SwiftUI

struct ButtonView: View {
    @StateObject private var timer = TimeCounter()
//    private var buttonAction: UIAction
//    private var buttonTitle = ""
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text("\(timer.buttonText)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
