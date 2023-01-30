//
//  BindingBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var bgColor : Color = Color.red
    
    var body: some View {
        ZStack{
            // background
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            ButtonView(backgroundColor: $bgColor)
        }
    }
}
struct ButtonView: View {
    
    @Binding var backgroundColor : Color
    
    
    var body: some View {
        Button {
            backgroundColor = Color.mint
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding(20)
                .padding(.horizontal,20)
                .background(Color.black)
                .cornerRadius(20)
            
        }
    }
}
struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}


