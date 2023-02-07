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
                    Text(item)
                }
            }
        }
    }
}

struct EnviromentObject_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObject()
    }
}
