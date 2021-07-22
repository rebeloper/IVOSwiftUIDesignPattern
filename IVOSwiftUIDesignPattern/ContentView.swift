//
//  ContentView.swift
//  IVOSwiftUIDesignPattern
//
//  Created by Alex Nagy on 22.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var observed = Observed()
    
    var body: some View {
        Text("Hello, \(observed.profile.name)!")
            .onAppear {
                fetchProfile()
            }
    }
    
    func fetchProfile() {
        observed.fetchProfile { err in
            if let err = err {
                print(err.localizedDescription)
                return
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
