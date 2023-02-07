//
//  ViewModelBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 7.02.2023.
//

import SwiftUI

struct FruitModel : Identifiable{
    let id = UUID().uuidString
    let name: String
    let count: Int
}

struct ViewModelBootcamp: View {
            
    func fetchData() {
        let fruit1 = FruitModel(name: "Banana", count: 4)
        let fruit2 = FruitModel(name: "Orange", count: 1)
        let fruit3 = FruitModel(name: "Peach", count: 5)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    func performDelete(indexSet : IndexSet){
        fruitArray.remove(atOffsets: indexSet)
    }
    
    @State var fruitArray : [FruitModel] = []
    var body: some View {
        NavigationView {
            List{
                ForEach(fruitArray) { fruit in
                    HStack{
                        Text("\(fruit.count)")
                        Text(fruit.name)
                            .font(.headline)
                    }
                }
                .onDelete { indexSet in
                    performDelete(indexSet: indexSet)
                }
            }.listStyle(.grouped)
                .navigationTitle("Fruit List")
                .onAppear {
                    fetchData()
                }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
