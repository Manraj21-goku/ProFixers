//
//  Welcome_Client.swift
//  ProFixers
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Welcome_Client: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    // Top Row with Welcome and Logout
                    HStack {
                        Text("Welcome, Provider")
                            .font(.headline)
                            .padding(.leading)
                        
                        Spacer()
                        
                        //                    Button(action: {
                        //                        // Logout action
                        //                        print("Logout tapped")
                        //                    })
                        NavigationLink(destination: Login()) {
                            Text("Logout")
                                .foregroundColor(.red)
                                .padding(.trailing)
                        }
                        .navigationBarBackButtonHidden(true)
                    }
                    .navigationBarBackButtonHidden(true)
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Text("There are no customers yet.!!!!")
                            .foregroundColor(.red)
                            .padding()
                            .background(Rectangle()
                                .fill(Color.black)
                                        // Light gray background
                                .cornerRadius(10))
                    }
                    .padding()
                    
                    Spacer()
                        .navigationBarBackButtonHidden(true)
                }
                .navigationBarBackButtonHidden(true)
                .padding()
            }
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Welcome_Client()
}
