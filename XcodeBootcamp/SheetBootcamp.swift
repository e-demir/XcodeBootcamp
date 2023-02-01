//
//  SheetBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 1.02.2023.
//

import SwiftUI

struct SheetBootcamp: View {
    
    @State var isSheetPresented: Bool = false
    
    var body: some View {
        ZStack{
            
          // background
            Color.green.edgesIgnoringSafeArea(.all)
            
          // foreground
            Button {
                isSheetPresented.toggle()
            } label: {
                Text("Clicken sie").foregroundColor(.green)
                    .frame(width: 100, height: 50)
                    .background(Color.white).cornerRadius(30)
                    .padding(30)
            }
            .sheet(isPresented: $isSheetPresented) {
                Text("Wilcommen sie")
            }
        }
    }
}

struct SheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp()
    }
}
