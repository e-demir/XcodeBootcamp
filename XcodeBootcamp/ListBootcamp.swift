//
//  ListBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 1.02.2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
    "Banana","Peach","Apple","Orange"
    ]
    
    @State var veggies: [String] = [
    "Domato","Potato","Carrot"
    ]

    var body: some View {
        
        NavigationView {
            List{
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete { IndexSet in
                        fruits.remove(atOffsets: IndexSet)
                    }
                    .onMove { IndexSet, Int in
                        fruits.move(fromOffsets: IndexSet, toOffset: Int)
                    }
                } header: {
                    HStack {
                        Text("Meyveler")
                        Image(systemName: "flame")
                    }.font(.largeTitle)
                        .fontWeight(.heavy)
                }
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie)
                    }
                } header: {
                    Text("Sebzeler")
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Listem")
            .navigationBarItems(leading: EditButton(), trailing: Button("Add", action: {
                veggies.append("Cucumber")
            }))
        }
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
