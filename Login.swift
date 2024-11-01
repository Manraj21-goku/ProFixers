//
//  Login.swift
//  ProFixers
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Login: View {
    @State private var isLogin = false
    @State private var isLoginCL = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Logo
                Text("Profixers")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.top, 50)
                    .offset(y:50)
                
                Spacer()
                
                // Email Field
                TextField("Email", text: .constant(""))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Password Field
                SecureField("Password", text: .constant(""))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Login Button
                Button(action: {
                    // Login action
                    isLogin = true
                }){
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 30)
                .padding(.top, 10)
                NavigationLink(destination: Welcome_User(), isActive: $isLogin) {}
                
                Button(action: {
                    // Login action
                    isLoginCL = true
                }){
                    Text("Login as Provider")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 30)
                .padding(.top, 10)
                NavigationLink(destination: Welcome_Client(), isActive: $isLoginCL) {}
                
                ZStack{
                    // Register Button
                    NavigationLink(destination: Signup_User()) {
                        Text("Register as User")
                            .font(.body)
                            .foregroundColor(.blue)
                            .fontWeight(.semibold)
                            .padding(.vertical,10)
                            .padding(.horizontal,20)
                            .cornerRadius(8)
                            .shadow(radius: 2)
                    }
                    .offset(y:-10)
                    
                    NavigationLink(destination: Signup_Client()) {
                        Text("Register as Client")
                            .font(.body)
                            .foregroundColor(.blue)
                            .fontWeight(.semibold)
                            .padding(.vertical,10)
                            .padding(.horizontal,20)
                            .cornerRadius(8)
                            .shadow(radius: 2)
                        
                    }
                    .offset(y:20)
                }
                .padding(.top,20)
                .navigationBarBackButtonHidden(true)
                Spacer()
            }
            .background(Color.blue.opacity(0.1))
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Login()
}
