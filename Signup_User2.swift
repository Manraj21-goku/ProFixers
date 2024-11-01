//
//  Signup_User2.swift
//  ProFixers
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Signup_User2: View {
    @State private var gender = "Select Gender"
    @State private var city = ""
    @State private var phone = ""
    @State private var state = ""
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
                
               
                
                // Gender Picker
                VStack(alignment: .leading) {
                    Text("Gender")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 30)
                    
                    Menu {
                        Button("Male") { gender = "Male" }
                        Button("Female") { gender = "Female" }
                        Button("Other") { gender = "Other" }
                    } label: {
                        HStack {
                            Text(gender)
                                .foregroundColor(gender == "Select Gender" ? .gray : .black)
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
                TextField("City", text: $city)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                TextField("State", text: $state)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                TextField("Phone", text: $phone)
                    .padding()
                    .keyboardType(.numberPad)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Sign Up Button
                Button(action: {
                    //
                }) {
                    Text("Sign Up")
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
    Signup_User2()
}
