//
//  Signup_User.swift
//  ProFixers
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Signup_User: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var age = "Select Age"
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                // Logo
                Text("Profixers")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.top, 50)
                    .offset(y:25)
                
                Spacer()
                
                // Name Field
                TextField("Name", text: $name)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Email Field
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Password Field
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Age Picker
                VStack(alignment: .leading) {
                    Text("Age")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 30)
                    
                    Menu {
                        ForEach(18...100, id: \.self) { ageOption in
                            Button("\(ageOption)") { age = "\(ageOption)" }
                        }
                    } label: {
                        HStack {
                            Text(age)
                                .foregroundColor(age == "Select Age" ? .gray : .black)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        .padding(.horizontal, 30)
                    }
                }
                // Sign Up Button
                NavigationLink(destination: Signup_User2()) {
                    Text("Next")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 30)
                .padding(.top, 10)
                
                Spacer()
            }
            .padding(.bottom,20)
        }
        .background(Color.blue.opacity(0.1))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Signup_User()
}


