//
//  StateBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var bgColor : Color = Color.green
    @State var fgColor : Color = Color.white
    @State var title : String = "My Title"
    @State var count : Int = 1
    
    
    var body: some View {
        ZStack{
            // background
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            VStack(spacing: 10) {
                Text(title)
                    .font(.title)
                Text("Count \(count)")
                    .font(.title2)
                    .underline()
                
                HStack(spacing: 10) {
                    Button("BUTTON 1") {
                        bgColor = Color.blue
                        title = "BUTTON 1 was pressed"
                        count += 1
                        fgColor = Color.white
                    }
                    Button("BUTTON 2") {
                        bgColor = Color.yellow
                        title = "BUTTON 2 was pressed"
                        count -= 1
                        fgColor = Color.blue
                    }
                }
            }
        }.foregroundColor(fgColor)
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
