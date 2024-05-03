//
//  Settings.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import Foundation
import SwiftUI
import Combine

class Setttings: ObservableObject {
   @Published var selectedModel : Model? {
      willSet(newValue){
         print("seleccionamos el modelo")
      }
   }
   
   @Published var confirmedModel : Model? {
      willSet(newValue){
         guard let model = newValue else {return}
         print("confirmamos el modelo", model.name)
      }
   }
   
   var sceneObserver: Cancellable? 
   
}
