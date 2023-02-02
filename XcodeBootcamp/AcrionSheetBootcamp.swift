//
//  AcrionSheetBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 2.02.2023.
//

import SwiftUI

struct AcrionSheetBootcamp: View {
    
    @State var actionSheetShown : Bool = false
    
    var body: some View {
        Button("Hello"){
            actionSheetShown.toggle()
        }                
        .actionSheet(isPresented: $actionSheetShown) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        return ActionSheet(title: Text("Title"), message: Text("Message"), buttons: [ActionSheet.Button.destructive(Text("Back"), action: {}), .default(Text("Yaay"))])
    }
}

struct AcrionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AcrionSheetBootcamp()
    }
}
