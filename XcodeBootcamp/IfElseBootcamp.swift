//
//  IfElseBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 1.02.2023.
//

import SwiftUI

struct IfElseBootcamp: View {
    
    @State var isLoading: Bool = true
    
    var body: some View {
        VStack{
            Button("Loading") {
                isLoading.toggle()
            }
            if isLoading{
                ProgressView()
            }
        }
    }
}

struct IfElseBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfElseBootcamp()
    }
}
