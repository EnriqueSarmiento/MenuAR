//
//  CameraView.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import SwiftUI
/** this file will be the one that show when we open the camera on the iphone*/

struct CameraView: View {
   
   @EnvironmentObject var settings: Setttings
   
    var body: some View {
       HStack{
          Spacer()
          CameraButtonView(icon: "xmark.circle.fill") {
             settings.selectedModel = nil
          }
          Spacer()
          CameraButtonView(icon: "checkmark.circle.fill") {
             settings.confirmedModel = settings.selectedModel
             settings.selectedModel = nil
          }
          Spacer()
       }
    }
}

struct CameraButtonView: View {
   let icon: String
   let action: () -> Void
   
    var body: some View {
       Button {
          action()
       } label: {
          Image(systemName: icon)
             .font(.system(size: 50))
             .foregroundColor(.white)
             .buttonStyle(PlainButtonStyle())
       }.frame(width: 75, height: 75)

    }
}
