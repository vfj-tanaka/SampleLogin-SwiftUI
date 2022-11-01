//
//  SampleLogin_SwiftUIApp.swift
//  SampleLogin-SwiftUI
//
//  Created by mtanaka on 2022/10/31.
//
import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct SampleLogin_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            SignInView()
        }
    }
}
