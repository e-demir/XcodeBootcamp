//
//  OnApperaBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct OnApperaBootcamp: View {
    
    @State var myText : String = "Emrullah"
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text(myText)
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "Helloooooooooo"
                })
            })
            .navigationTitle("Title")
        }
    }
}

struct OnApperaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnApperaBootcamp()
    }
}
