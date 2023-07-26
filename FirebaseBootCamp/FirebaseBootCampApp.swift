//
//  FirebaseBootCampApp.swift
//  FirebaseBootCamp
//
//  Created by Ambrose Mbayi on 26/07/2023.
//

import SwiftUI
import Firebase

@main
struct FirebaseBootCampApp: App {
    //    init() {
    //        FirebaseApp.configure()
    //        print("firebase configured")
    //    }
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        print("firebase configured using app delegates")
        
        return true
    }
}
