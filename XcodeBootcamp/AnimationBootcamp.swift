//
//  AnimationBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 1.02.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isClicked: Bool = false
    
    var body: some View {
        VStack{
            Button("Click me"){
                withAnimation(.easeIn(duration: 6)){
                    isClicked.toggle()
                }
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(isClicked ? .red : .mint)
                .frame(width: 200, height: 200)
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
