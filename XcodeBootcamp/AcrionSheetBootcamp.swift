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
        .confirmationDialog(
            LocalizedStringKey.init("Hel"),
            isPresented: $actionSheetShown,
            titleVisibility: .visible) {            
        }
    }
}

struct AcrionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AcrionSheetBootcamp()
    }
}
