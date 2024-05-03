//
//  ContentView.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       NavigationView{
          NavigationLink(destination: HomeView()) {
             Text("Abrir Menu aumentado")
          }.buttonStyle(BorderedButtonStyle())
             .tint(.blue)
             .navigationTitle("Restaurant")
       }
    }
}
