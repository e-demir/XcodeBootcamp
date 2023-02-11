//
//  FocusStateBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 11.02.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    @State var nameTxtField : String = ""
    @FocusState var isFocused : Bool
    
    var body: some View {
        VStack{
            TextField("Name goes here", text: $nameTxtField)
                .focused($isFocused)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Toggle this"){
                isFocused.toggle()
            }
        }.padding(40)
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
