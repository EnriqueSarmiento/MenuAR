//
//  MenuARApp.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import SwiftUI

@main
struct MenuARApp: App {
   @StateObject var settings = Setttings()
   
    var body: some Scene {
        WindowGroup {
            ContentView()
              .environmentObject(settings)
        }
    }
}
