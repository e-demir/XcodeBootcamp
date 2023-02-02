//
//  AcrionSheetBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 2.02.2023.
//

import SwiftUI

struct AcrionSheetBootcamp: View {
    
    @State var actionSheetShown : Bool = false
    @State var postType : PostType = .OtherPost
    
    enum PostType{ //enum usage is important
        case MyPost
        case OtherPost
    }
    
    var body: some View {
        VStack{
            HStack{
                Circle().frame(width: 30)
                Text("e1demir")
                Spacer()
                Button {
                    //postType = .MyPost
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
//        let button1 : ActionSheet.Button = .default(Text("Button 1"))
//        let button2 : ActionSheet.Button = .destructive(Text("Button 2"))
//        let button3 : ActionSheet.Button = .default(Text("Button 3"))
//        let button4 : ActionSheet.Button = .cancel(Text("Cancel"))
//
        let myPosttitle : String = "Your post"
        let otherPosttitle : String = "Other post"
        let shareButton : ActionSheet.Button = .default(Text("Share"))
        let deleteButton : ActionSheet.Button = .destructive(Text("Delete"))
        
        switch postType {
        case .MyPost:
            return ActionSheet(title: Text(myPosttitle), message: nil, buttons: [shareButton])
        case .OtherPost:
            return ActionSheet(title: Text(otherPosttitle), message: nil, buttons: [deleteButton])
        }
        
        
    }
}

struct AcrionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AcrionSheetBootcamp()
    }
}
