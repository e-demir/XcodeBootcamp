//
//  AlertsBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 2.02.2023.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var isAlert : Bool = false
    @State var bgColor : Color = Color.yellow
    
    var body: some View {
        ZStack{
            // background
            bgColor.edgesIgnoringSafeArea(.all)
            
            Button("Click") {
                isAlert.toggle()
            }
        }
        .alert(isPresented: $isAlert) {
            Alert(
                title: Text("Title"),
                message: Text("Something went wrong"),
                primaryButton: Alert.Button.default(Text("Hmm.."), action: {
                    bgColor = Color.red
                }),
                secondaryButton: Alert.Button.cancel(){
                    bgColor = Color.mint
                })
        }
    }
}

struct AlertsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertsBootcamp()
    }
}
