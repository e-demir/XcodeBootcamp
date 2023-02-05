//
//  IfLetGuardBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var message : String? = "Practise makes perfect"
    @State var userId : String? = "aa"
    @State var isLoading : Bool = false
    
    func loadData(){
        if let userIdValidated = userId{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
                message?.append(userIdValidated)
                isLoading = false
            })
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text("Welcome To App").font(.title)
                
                if let text = message{
                    Text(text).font(.headline)
                }
                if isLoading{
                    ProgressView()
                }
            }
            .navigationTitle("Title").font(.headline)
            .onAppear {
                loadData()
            }
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
