//
//  View+.swift
//  SampleLogin-SwiftUI
//
//  Created by mtanaka on 2022/11/01.
//

import SwiftUI

extension View {
    
    func asSignTextField() -> some View {
        modifier(SignTextFieldModifier())
    }
}
