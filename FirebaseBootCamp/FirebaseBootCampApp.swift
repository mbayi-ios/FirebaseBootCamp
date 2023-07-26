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
    init() {
        FirebaseApp.configure()
        print("firebase configured")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
