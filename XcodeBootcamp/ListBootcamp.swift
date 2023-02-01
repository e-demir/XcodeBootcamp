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
    
    func delete(indexset: IndexSet){
        fruits.remove(atOffsets: indexset)
    }
    
    
    
    
    var body: some View {
        NavigationView{
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete { index  in
                        delete(indexset: index)
                    }
                    .onMove { IndexSet, Int in
                        fruits.move(fromOffsets: IndexSet, toOffset: Int)
                    }
                } header: {
                    Text("Fruits")
                }                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie)
                    }
                } header: {
                    Text("Veggies")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Alışveriş List")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: Button(action: {
                fruits.append("Coconot")
            }, label: {
                Text("Add")
            }))
        }
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
