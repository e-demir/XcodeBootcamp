//
//  ForeachBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct ForeachBootcamp: View {
    
    let data: [String] = ["Emrulah","Ayça","Selami","Gönül"]
    
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
            }
        }
    }
}

struct ForeachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamp()
    }
}

