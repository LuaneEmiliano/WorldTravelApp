//
//  LoginTravelWorldApp.swift
//  WorldTravelApp
//
//  Created by luane Niejelski.
//

import SwiftUI

struct LoginTravelWorldApp: View {
    
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack {
                    Picker(selection: $isLoginMode, label:
                            Text("Picker here")) {
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    if !isLoginMode {
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "globe.europe.africa")
                                .font(.system(size: 100))
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                    }
                    
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .padding(.horizontal)
                        .frame(height: 55)
                        .background(Color.white)
                        .cornerRadius(20)
                    
                    SecureField("Password", text: $password)
                        .padding(.horizontal)
                        .frame(height: 55)
                        .background(Color.white)
                        .cornerRadius(20)
                    
                    Button {
                        handleAction()
                    } label: {
                        HStack {
                            
                            Text(isLoginMode ? "Log In" : "Create Account")
                                .padding(.horizontal)
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(height: 55)
                                .frame(maxWidth:.infinity).background(Color.accentColor)
                                .cornerRadius(10)
                            
                        }
                    }
                    
                }
                .padding()
            }
            .navigationTitle(isLoginMode ? "Log In" : "Create Account")
            .background(Color(.init(white: 0, alpha: 0.07))
                            .ignoresSafeArea())
            
        }
    }
    
    private func handleAction() {
        if isLoginMode {
            print("Should log into Firebase with existing credentials")
        } else {
            print("Register a new account inside of Firebase Auth and then store image in Storage somehow...")
        }
    }
}

struct LoginTravelWorldApp_Previews: PreviewProvider {
    static var previews: some View {
        LoginTravelWorldApp()
    }
}
