//
//  ContentView+Observed.swift
//  IVOSwiftUIDesignPattern
//
//  Created by Alex Nagy on 22.07.2021.
//

import SwiftUI

extension ContentView {
    class Observed: ObservableObject {
        
        @Published var profile = Profile()
        
        func fetchProfile(completion: (Error?) -> ()) {
            let profile = Profile(name: "Alex")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.profile = profile
            }
        }
        
    }
}
