//
//  ContextMenuBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 2.02.2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var bgColor : Color = .black
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("My SwiftUI learning path")
                .font(.title2)
            Text("Limitless learning")
                .font(.subheadline)
        }
        
        .foregroundColor(.white)
        .padding(20.0)
        .background(bgColor)
        .contextMenu(menuItems: {
            Button {
                bgColor = .red
            } label: {
                HStack {
                    Text("Burning...")
                    Image(systemName: "flame.fill")
                }
            }

            Button {
                bgColor = .blue
            } label: {
                HStack {
                    Text("Lovely...")
                    Image(systemName: "heart.fill")
                }
            }

            Button {
                bgColor = .yellow
            } label: {
                HStack {
                    Text("Share this :)")
                    Image(systemName: "arrowshape.turn.up.forward.circle.fill")
                }
                
            }

        })
        .cornerRadius(20)
            
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
