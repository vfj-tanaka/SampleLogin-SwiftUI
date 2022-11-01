//
//  SignTextFieldModifier.swift
//  SampleLogin-SwiftUI
//
//  Created by mtanaka on 2022/11/01.
//

import SwiftUI

struct SignTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
            .padding(.horizontal, 10)
            .textFieldStyle(PlainTextFieldStyle())
            .background(Color.white)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(.init(white: 0.85, alpha: 1)))
            )
    }
}
