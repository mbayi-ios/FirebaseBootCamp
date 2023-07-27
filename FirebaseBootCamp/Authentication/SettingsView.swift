//
//  SettingsView.swift
//  FirebaseBootCamp
//
//  Created by Ambrose Mbayi on 27/07/2023.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject {
    func signOut() throws {
        try AuthenticationManager.shared.signOut()
    }
}

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    var body: some View {
        List {
            Button("logout") {
                Task {
                    do {
                        try viewModel.signOut()
                        showSignInView = true
                        
                    } catch {
                        print(error)
                    }
                }
            }
        }
        .navigationBarTitle("Setting")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            SettingsView(showSignInView: .constant(false))
        }
    }
}
