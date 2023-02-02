//
//  TextFieldBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 2.02.2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldValue : String = ""
    @State var dataArray : [String] = []
    
    func saveText(){
        dataArray.append(textFieldValue)
        // thinking how to reset and this is the solution
        textFieldValue = ""
    }
    
    func textIsValid() -> Bool {
        var response = false
        if textFieldValue.count >= 2{
            response = true
        }
        return response
    }
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something", text: $textFieldValue)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.gray)
                .font(.headline)
                
                Button {
                    if textIsValid(){
                        saveText()
                    }
                } label: {
                    Text("SAVE")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(textIsValid() ? Color.blue : Color.gray)
                        .cornerRadius(5)
                    .font(.headline)
                }
                .disabled(!textIsValid())
                Spacer()
                List {
                    ForEach(dataArray, id: \.self) { t in
                        Text(t)
                    }
                }
            }.padding()
                .navigationTitle("Bootcamp Textfield!")
        }
            
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
