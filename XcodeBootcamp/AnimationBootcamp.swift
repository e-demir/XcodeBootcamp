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
               
                isClicked.toggle()
            }
            
            RoundedRectangle(cornerRadius: isClicked ? 200 :  20)
                .fill(isClicked ? .red : .mint)
                .frame(width: isClicked ? 20 : 200, height: 200)
                .offset(y: isClicked ? 300 : 0)
                .animation(Animation
                    .easeIn
                    .repeatForever()
                )
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
