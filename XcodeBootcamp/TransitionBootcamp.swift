//
//  TransitionBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 1.02.2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var isShown: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            // background
            VStack{
                Button("Button"){
                    isShown.toggle()
                }
                Spacer()
            }
                                  
            
            if isShown{
                RoundedRectangle(cornerRadius: 30)
                    .frame(
                        height: UIScreen.main.bounds.height * 0.5
                    )
                    .transition(.move(edge: .top))
                    .animation(.easeOut)
            }
            
            // foreground
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
