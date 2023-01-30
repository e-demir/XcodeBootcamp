//
//  BindingBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var bgColor : Color = Color.red
    @State var title : String = "Boring title 😕"
    
    var body: some View {
        ZStack{
            // background
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            VStack(spacing: 30) {
                Text(title)
                    .font(.largeTitle)
                    .underline()
                
                ButtonView(backgroundColor: $bgColor, newTitle: $title)
            }
        }
    }
}
struct ButtonView: View {
    
    @Binding var backgroundColor : Color  //changes the other view
    @Binding var newTitle : String  //changes the other view
    @State var buttonColor : Color = Color.black // changes this view
    
    
    var body: some View {
        Button {
            backgroundColor = Color.mint
            buttonColor = Color.red
            newTitle = "Happy new title 🥳"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding(20)
                .padding(.horizontal,20)
                .background(buttonColor)
                .cornerRadius(20)
            
        }
    }
}
struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}


