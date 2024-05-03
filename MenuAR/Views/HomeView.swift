//
//  HomeView.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import SwiftUI
import ARKit
import RealityKit

struct HomeView: View {
   
   @State private var showMenu: Bool = false
   @EnvironmentObject var settings : Setttings
    var body: some View {
       ZStack(alignment: .bottom){
          ARViewContainer()
          if settings.selectedModel == nil {
             ControlView(showMenu: $showMenu)
          }else {
             CameraView()
          }
       }
    }
}

struct ARViewContainer: UIViewRepresentable {
   
   @EnvironmentObject var settings: Setttings
   
   func makeUIView(context: Context) -> some CustomARView {
      let ARView  = CustomARView(frame: .zero)
      
      settings.sceneObserver = ARView.scene.subscribe(to: SceneEvents.Update.self, { event in
         sceneUpdate(arView: ARView)
      })
      
      return ARView
   }
   
   func updateUIView(_ uiView: UIViewType, context: Context) {
      
   }
   
   func sceneUpdate(arView: CustomARView){
      arView.focusEntity?.isEnabled = settings.selectedModel != nil
      
      if let confirmModel = settings.confirmedModel, let modelEntity = confirmModel.modelEntity {
         plane(modelEntity: modelEntity, arView: arView)
         settings.confirmedModel = nil
      }
   }
   
   /** here we are gint to put on a plane our AR object*/
   func plane(modelEntity: ModelEntity, arView: ARView){
      /** here we cloned the object from the model entity*/
      let clonedEntity = modelEntity.clone(recursive: true)
      clonedEntity.generateCollisionShapes(recursive: true)
      
      /** here we add the gesture to allow the user to rotate or move the object*/
      arView.installGestures([.rotation,.translation], for: clonedEntity)
      
      /** here we attache our object to a plane like horizontal, vertical and so on*/
      let anchorEntity = AnchorEntity(plane: .any)
      /** addchield becase we can put several object on the same plane*/
      anchorEntity.addChild(clonedEntity)
      
      arView.scene.addAnchor(anchorEntity)
   }
   
   
}
