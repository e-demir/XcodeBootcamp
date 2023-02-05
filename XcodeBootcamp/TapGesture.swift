//
//  TapGesture.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct TapGesture: View {
    
    @State var boxColor : Color = .red
    @State var isClicked : Bool = false
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(isClicked ? boxColor : .blue)
                .frame(height: 200)
            Button {
                isClicked.toggle()
            } label: {
                Text("Button")
                    .font(.title)
                    .frame(width: 300, height: 100)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
            Text("Click 2 times")
                .font(.title)
                .frame(width: 300, height: 100)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(25)
                .onTapGesture(count: 2) {
                    isClicked.toggle()
                }
            Spacer()
        }
    }
}

struct TapGesture_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture()
    }
}
