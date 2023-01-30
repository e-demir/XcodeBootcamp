//
//  ForeachBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct ForeachBootcamp: View {
    var body: some View {
        VStack{
            ForEach(0..<10){ index in
                Text("Selam, \(index)")
            }
        }
    }
}

struct ForeachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamp()
    }
}

