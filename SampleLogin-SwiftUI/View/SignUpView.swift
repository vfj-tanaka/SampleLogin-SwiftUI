//
//  SignUpView.swift
//  SampleLogin-SwiftUI
//
//  Created by mtanaka on 2022/10/31.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var user: String = ""
    @State private var mail: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String = ""
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                Color.brown
                    .opacity(0.3)
                    .ignoresSafeArea()
                
                VStack(spacing: 50) {
                    
                    Text("SignUp")
                        .font(.system(size: 60, weight: .heavy))
                        .foregroundColor(.brown)
                    
                    VStack(spacing: 20) {
                        VStack(alignment: .leading)  {
                            Text("ユーザー名")
                            TextField("Name", text: $user)
                                .asSignTextField()
                        }
                        
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
                        Text("登録")
                            .frame(width: 200, height: 50)
                            .background(Color.brown)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.white)
                            .cornerRadius(5)
                    })
                    
                    NavigationLink(destination: SignInView(), label: {
                        Text("既にアカウントをお持ちの方")
                    })
                }
                .padding(.horizontal, 30)
            }
            .navigationBarHidden(true)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
