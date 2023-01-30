//
//  StateBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var bgColor : Color = Color.green
    
    
    var body: some View {
        ZStack{
            // background
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            VStack(spacing: 10) {
                Text("Title")
                    .font(.title)
                Text("Count 1")
                    .font(.title2)
                    .underline()
                
                HStack(spacing: 10) {
                    Button("BUTTON 1") {
                        bgColor = Color.blue
                    }
                    Button("BUTTON 2") {
                        bgColor = Color.yellow
                    }
                }
            }
        }.foregroundColor(.white)
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
