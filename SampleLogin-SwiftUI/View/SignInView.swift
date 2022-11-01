//
//  SignInView.swift
//  SampleLogin-SwiftUI
//
//  Created by mtanaka on 2022/10/31.
//

import SwiftUI

struct SignInView: View {
    
    @State private var mail: String = ""
    @State private var password: String = ""
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            
            Color.brown
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                Text("SignIn")
                    .font(.system(size: 60, weight: .heavy))
                    .foregroundColor(.brown)
                
                VStack(spacing: 20) {
                    
                    VStack(alignment: .leading)  {
                        Text("メールアドレス")
                        TextField("Email", text: $mail)
                            .asSignTextField()
                    }
                    
                    VStack(alignment: .leading)  {
                        Text("パスワード")
                        TextField("Password", text: $password)
                            .asSignTextField()
                    }
                }
                
                Button(action: {
                    
                }, label: {
                    Text("ログイン")
                        .frame(width: 200, height: 50)
                        .background(Color.brown)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .cornerRadius(5)
                })
                
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    Text("アカウントをお持ちでない方")
                })
            }
            .padding(.horizontal, 30)
        }
        .navigationBarHidden(true)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
