//
//  CustomARView.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import Foundation
import RealityKit
import ARKit
import FocusEntity

/** this file or view will handle the position and render of out AR item*/
class CustomARView: ARView {
   var focusEntity: FocusEntity?
   
   required init(frame: CGRect) {
      super.init(frame: frame)
      focusEntity = FocusEntity(on: self, focus: .classic)
   }
   
   @MainActor required dynamic init?(coder decoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
}
