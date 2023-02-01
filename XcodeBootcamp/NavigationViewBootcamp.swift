//
//  NavigationViewBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 1.02.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                NavigationLink("2nd Screen") {
                    SsecondScreen()
                }
            }
            .navigationTitle("Inbox")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(false)
            
            
        }
    }
}

struct SsecondScreen : View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View{
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("2nd screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("Go back") {
                    mode.wrappedValue.dismiss()
                }
                NavigationLink("3rd Screen") {
                    ThirdScreen()
                }
            }
            
            
        }
    }
}
struct ThirdScreen : View {
    var body: some View{
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
                .navigationTitle("3rd Screen")
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
