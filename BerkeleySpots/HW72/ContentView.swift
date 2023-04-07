//
//  ContentView.swift
//  HW72
//
//  Created by Abinaya on 3/21/23.
//

import SwiftUI
import Firebase
import FirebaseCore

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    @State var sucessLogin = false

    init() {
        FirebaseApp.configure()
    }
    
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
            if let err = error {
                print(err.localizedDescription)
                return
            }
            self.sucessLogin = true
            print("Success Login")
        }
    }
        
    var body: some View {
        VStack{
            if (sucessLogin){
                someView()
            }
            TextField("Email", text: $email)
                .frame(width: 250, height: 50, alignment: .center)
                .autocapitalization(.none)
                .textFieldStyle(.roundedBorder)
            SecureField("Password", text: $password)
                .frame(width: 250, height: 50, alignment: .center)
                .textFieldStyle(.roundedBorder)
            Button("Sign in"){
                login(email: email, password: password)
            }
        }
    }
}

struct someView: View {
    var body: some View {
        TabView {
            AddView().tabItem {
                Label("Add New Spot", systemImage: "plus.circle")
            }
            MainView().tabItem {
                Label("Spots", systemImage: "takeoutbag.and.cup.and.straw.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
