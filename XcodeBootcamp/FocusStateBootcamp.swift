//
//  FocusStateBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 11.02.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    @State var nameTxtField : String = ""
    @State var passwordTxtField : String = ""
    @FocusState var isFocusedText : Bool
    @FocusState var isFocusedPassword : Bool
    
    func signUp(){
        let usernameIsValid = !nameTxtField.isEmpty
        let passwordIsValid = !passwordTxtField.isEmpty
        
        if usernameIsValid && passwordIsValid{
            print("SIGN UP")
        }else if usernameIsValid && !passwordIsValid{
            isFocusedText = false
            isFocusedPassword = true
        }else if !usernameIsValid && passwordIsValid{
            isFocusedText = true
            isFocusedPassword = false
        }else{
            isFocusedText = true
            isFocusedPassword = false
        }
    }
    
    var body: some View {
        VStack{
            TextField("Username", text: $nameTxtField)
                .focused($isFocusedText)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            SecureField("Password", text: $passwordTxtField)
                .focused($isFocusedPassword)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP"){
                signUp()
            }
        }.padding(40)
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
