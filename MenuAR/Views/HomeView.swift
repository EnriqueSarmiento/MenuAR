//
//  HomeView.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import SwiftUI

struct HomeView: View {
   
   @State private var showMenu: Bool = false
   
    var body: some View {
       ControlView(showMenu: $showMenu)
    }
}
