//
//  AuthView.swift
//  EcommerceApp
//
//  Created by Apple on 31/03/25.
//

import SwiftUI

struct AuthView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var isLoginMode = true
    @State private var errorMessage = ""
    
    var body: some View {
        
        VStack{
            Text(isLoginMode ? "Login" : "SignUp")
                .font(.largeTitle)
                .bold()
                .padding()
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: handleAuth) {
                Text(isLoginMode ? "Login" : "SignUP")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
            
            Text(errorMessage)
                .foregroundColor(.red)
                .padding()
            
            Button {
                isLoginMode.toggle()
            } label: {
                Text(isLoginMode ? "Don't have an account? Sign Up" : "Already have an account?")
                    .foregroundColor(.blue)
            }
            .padding()
        }
        .padding()
    }
    
    func handleAuth(){
        if isLoginMode{
            loginUser()
        }else{
            signUpUser()
        }
    }
    
    func loginUser(){
        
    }
    
    func signUpUser(){
        
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
