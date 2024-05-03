//
//  ControlView.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import SwiftUI

//THIS VIEW WILL BE ABOVE OF THE CAMARA WHEN OPENED
struct ControlView: View {
    var body: some View {
       VStack(alignment: .center){
          Spacer()
          
          HStack(alignment:.center){
             Button {
                print("DBEUG: abrir menu")
             } label: {
                Image(systemName: "plus").font(.system(size: 35))
                   .foregroundColor(.white)
                   .buttonStyle(PlainButtonStyle())
             }.frame(width: 50, height: 50)

          }
          .frame(maxWidth: 500)
          .padding(30)
          .background(Color.black.opacity(0.25))
       }
    }
}
