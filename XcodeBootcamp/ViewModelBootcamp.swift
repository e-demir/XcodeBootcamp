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

class FruitViewModel : ObservableObject{
    
    init() {
        fetchData()
    }
    
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading : Bool = false
    
    func fetchData() {
        isLoading = true
        let fruit1 = FruitModel(name: "Banana", count: 4)
        let fruit2 = FruitModel(name: "Orange", count: 1)
        let fruit3 = FruitModel(name: "Peach", count: 5)
        DispatchQueue.main.asyncAfter(deadline: .now()+4){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
        
        
    }
    
    func performDelete(indexSet : IndexSet){
        fruitArray.remove(atOffsets: indexSet)
    }

}

struct ViewModelBootcamp: View {
    
    // INITIAL USAGE STATE OBJECT
    // SECOND VIEW USAGE LIKE PARAMETER OBSERVED OBJECT
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List{
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                            Text(fruit.name)
                                .font(.headline)
                        }
                    }
                    .onDelete { indexSet in
                        fruitViewModel.performDelete(indexSet: indexSet)
                    }
                }
            }.listStyle(.grouped)
                .navigationTitle("Fruit List")
                .navigationBarItems(trailing: NavigationLink(destination: {
                    AnotherView(fruitViewModel: fruitViewModel)
                }, label: {
                    Image(systemName: "arrow.right")
                }))
//                .onAppear {
//                    fruitViewModel.fetchData()
//                }
                
        }
    }
}

struct AnotherView:View{
    
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
