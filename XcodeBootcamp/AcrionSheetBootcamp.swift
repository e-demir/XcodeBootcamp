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
        VStack{
            HStack{
                Circle().frame(width: 30)
                Text("e1demir")
                Spacer()
                Button {
                    actionSheetShown.toggle()
                } label: {
                    Image(systemName: "ellipsis").accentColor(.red)
                }

            }.padding(.horizontal)
            
            Rectangle().aspectRatio(contentMode: .fit)
            
        }
        .actionSheet(isPresented: $actionSheetShown) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        
        let button1 : ActionSheet.Button = .default(Text("Button 1"))
        let button2 : ActionSheet.Button = .destructive(Text("Button 2"))
        let button3 : ActionSheet.Button = .default(Text("Button 3"))
        let button4 : ActionSheet.Button = .cancel(Text("Cancel"))
                
        return ActionSheet(
            title: Text("Title"),
            message: Text("Message"),
            buttons: [button1,button2,button3,button4])
    }
}

struct AcrionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AcrionSheetBootcamp()
    }
}
