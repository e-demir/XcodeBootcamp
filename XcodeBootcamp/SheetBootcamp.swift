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
//            .sheet(isPresented: $isSheetPresented) {
                // NO CONDITIONAL LOGIC
//                SecondScreen()
//            }
        }
        // same with the sheet, not draggable, covers the whole screen
        .fullScreenCover(isPresented: $isSheetPresented) {
            SecondScreen()
        }
    }
}

struct SecondScreen : View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment: .topLeading){
            
          // background
            Color.red.edgesIgnoringSafeArea(.all)
            
          // foreground
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp()
        //SecondScreen()
    }
}
