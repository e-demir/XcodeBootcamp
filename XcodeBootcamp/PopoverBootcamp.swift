//
//  PopoverBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 1.02.2023.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var isSheetShown: Bool = false
    
    var body: some View {
        ZStack{
            
            // background
            Color.brown.edgesIgnoringSafeArea(.all)
            
            // foreground
            
            VStack {
                Button {
                    isSheetShown.toggle()
                } label: {
                    Text("BUTTON").font(.largeTitle).foregroundColor(.white)
            }
                Spacer()
            }

        }
        
        // METHOD-1 : SHEET
        // .sheet(isPresented: $isSheetShown) {
        // SheetScreen()
        // }
        
        // METHOD-2 : TRANSITION
        
        
        
        
    }
}

struct SheetScreen : View{
    
    @Environment(\.presentationMode) var mode
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack{
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(20)
                }
                
                Spacer()
            }
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
        //SheetScreen()
    }
}
