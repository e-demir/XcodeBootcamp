//
//  BackgroundMaterialsBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 11.02.2023.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50,height: 5)
                    .padding()
                    Spacer()
            }
                .frame(height: 350)
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(Image("therock"))
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
