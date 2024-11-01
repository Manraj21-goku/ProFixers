//
//  Welcome_User.swift
//  ProFixers
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Welcome_User: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    // Top Row with Welcome and Logout
                    HStack {
                        Text("Welcome, Varnit")
                            .font(.headline)
                            .padding(.leading)
                        
                        Spacer()
                        NavigationLink(destination: Login()){
                            Text("Logout")
                                .foregroundColor(.red)
                                .padding(.trailing)
                        }
                    }
                    Spacer()
                    Text("Choose Your Services")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                   
                    // Center buttons
                    VStack(spacing: 20) {
                        VStack{
                            Button(action: {
                                // Action for Button 1
                            }) {
                                Label("Cook", systemImage: "cooktop")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.white.opacity(0.8))
                                    .clipShape(Capsule())
                                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                                
                            }
                            
                            Button(action: {
                                // Action for Button 2
                            }) {
                                Label("Saloon", systemImage: "scissors")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.white.opacity(0.8))
                                    .clipShape(Capsule())
                                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                                
                            }
                        }
                        
                        VStack{
                            Button(action: {
                                // Action for Button 3
                            }) {
                                Label("AC Repair", systemImage: "air.conditioner.horizontal")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.white.opacity(0.8))
                                    .clipShape(Capsule())
                                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                              
                            }
                            Button(action: {
                                // Action for Button 3
                            }) {
                                Label("Car Service", systemImage: "car")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.white.opacity(0.8))
                                    .clipShape(Capsule())
                                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                            }
                        }
                        VStack{
                            Button(action: {
                                // Action for Button 3
                            }) {
                                Label("House Help", systemImage: "person.line.dotted.person")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.white.opacity(0.8))
                                    .clipShape(Capsule())
                                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                            }
                            Button(action: {
                                // Action for Button 3
                            }) {
                                Label("House Cleaning", systemImage: "homekit")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.white.opacity(0.8))
                                    .clipShape(Capsule())
                                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                                
                            }
                        }
                        
                    }
                    .padding()
                    
                    Spacer()
                }
                .padding()
                .navigationBarBackButtonHidden(true)
            }
            .navigationBarBackButtonHidden(true)
            
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    Welcome_User()
}
