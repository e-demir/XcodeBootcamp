//
//  SubmitLabelBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 11.02.2023.
//

import SwiftUI

struct SubmitLabelBootcamp: View {
    @State var adımız : String = ""
    
    var body: some View {
        VStack{
            TextField("Adınız", text: $adımız)
                .submitLabel(.send)
                .onSubmit {
                    print("Girdiniz")
                }
            TextField("Harite", text: $adımız)
                .submitLabel(.route)
                .onSubmit {
                    print("Girdiniz")
                }
        }
    }
}

struct SubmitLabelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitLabelBootcamp()
    }
}
