//
//  EcommerceAppApp.swift
//  EcommerceApp
//
//  Created by Apple on 28/03/25.
//

import SwiftUI

@main
struct EcommerceAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                AuthView()
            }
        }
        
    }
    
        
       
}
