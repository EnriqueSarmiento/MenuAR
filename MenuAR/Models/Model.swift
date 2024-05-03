//
//  Model.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import Foundation
import SwiftUI
import RealityKit
import Combine

enum ModelCategory: CaseIterable {
   case carnes
   case pizzas
   case hamburguesas
   case postres
   
   var label: String {
      get{
         switch self {
         case .carnes:
            return "Carnes"
         case .pizzas:
            return "pizzas"
         case .hamburguesas:
            return "Hamburguesas"
         case .postres:
            return "Postres"
         }
      }
   }
}

class Model {
   var name: String
   var category: ModelCategory
   var thumbnail: UIImage
   // this is a class from RealityKit, will help us to represent our model in 3D
   var modelEntity: ModelEntity?
   /** Scale it is very important because with this value we know how to represent our data. So for each item/model/etc we need to change this scale to represet its size as in reality*/
   var scale: Float
   
   init(name: String, category: ModelCategory, scale: Float = 1.0){
      self.name = name
      self.category = category
      self.scale = scale
      /** It is name becase in this project each 3D assets has the same name as its thumbnail*/
      self.thumbnail = UIImage(named: name) ?? UIImage(systemName: "photo")!
   }
   
   func loadModel(){
      
   }
}

struct Models {
   var all: [Model] = []
   
   /** Here we initialize our information with our 3D assets */
   init(){
      all = [
         Model(name: "fresa", category: .postres, scale: 3/100),
         Model(name: "vainilla", category: .postres, scale: 3/100),
         Model(name: "frambuesa", category: .postres, scale: 3/100),
         Model(name: "cereza", category: .postres, scale: 3/100),
         Model(name: "carne", category: .carnes, scale: 3/100),
         Model(name: "pollo", category: .carnes, scale: 3/100),
         Model(name: "pizza", category: .pizzas, scale: 3/100),
         Model(name: "hamburguesa", category: .hamburguesas, scale: 3/100),
      ]
   }
   
   /** this function will return an array of our model Model depending a category */
   func get(category: ModelCategory) -> [Model]? {
      return all.filter({ $0.category == category})
   }
   
}


