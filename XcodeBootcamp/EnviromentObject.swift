//
//  EnviromentObject.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 7.02.2023.
//

import SwiftUI

class EnviromentViewModel : ObservableObject{
    
    @Published var dataArray : [String] = []
    
    func getData(){
        dataArray.append(contentsOf: ["Iphone","Ipad","Ipod","MacBook"])
    }
    
    init() {
            getData()
    }
}

struct EnviromentObject: View {
    
    //CAUSE FIRST USAGE
    @StateObject var enviromentViewModel = EnviromentViewModel()
        
    var body: some View {
        NavigationView {
            List{
                ForEach(enviromentViewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
            }.navigationTitle("Apple devices")
        }
    }
}

struct DetailView: View{
    let selectedItem: String
    var body: some View{
        ZStack{
            //bg
            Color.orange.edgesIgnoringSafeArea(.all)
            
            //fg
            
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding(15)
                    .padding(.horizontal,10)
                    .background(Color.white)
                    .cornerRadius(15)
            }
        }
    }
}

struct FinalView: View{
    var body: some View{
        ZStack{
            //bg
            LinearGradient(
                colors: [.orange,.green],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct EnviromentObject_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObject()
        //DetailView(selectedItem: "iMac")
        //FinalView()
    }
}
