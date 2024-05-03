//
//  MenuView.swift
//  MenuAR
//
//  Created by Enrique Sarmiento on 3/5/24.
//

import SwiftUI

struct MenuView: View {
   
   @Binding var showMenu: Bool
   
   var body: some View {
      NavigationView{
         ScrollView(showsIndicators: false){
            CategoryView(showMenu: $showMenu)
         }.navigationTitle("Menu")
      }
   }
}

struct GridView: View {
   @Binding var showMenu: Bool
   var title: String
   var items: [Model]
   /** this is for our lazy grid*/
   let gridItem = [GridItem(.fixed(150))]
   
   var body: some View {
      VStack(alignment: .leading){
         Text(title).font(.title).padding(.leading, 22)
         
         ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridItem, spacing: 10) {
               ForEach(0..<items.count, id: \.self){ index in
                  let model = items[index]
                  Button {
                     print("debug: seleccionar modelo")
                  } label: {
                     Image(uiImage: model.thumbnail).resizable().aspectRatio(contentMode: .fill).frame(height: 200)
                        .background(Color.white).cornerRadius(8.0)
                  }
               }
            }
         }
         .padding(.horizontal, 23)
            .padding(.vertical, 10)
      }
   }
}

struct CategoryView: View {
   @Binding var showMenu: Bool
   
   let models = Models()
   
   var body: some View {
      VStack(alignment: .center) {
         /** here we use aur enum category and specify allCases(). this will create an array of each case of our enum*/
         ForEach(ModelCategory.allCases, id:\.self){ category in
            if let categorias = models.get(category: category) {
               GridView(showMenu: $showMenu , title: category.label, items: categorias)
            }
         }
      }
   }
}

