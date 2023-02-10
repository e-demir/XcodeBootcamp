//
//  ProfileView.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 10.02.2023.
//

import SwiftUI



struct ProfileView: View {
    @AppStorage("name") var currentUsername : String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender : String?
    @AppStorage("userSignedIn") var userSignedIn : Bool = false
    
    func signOut() {
        currentUsername = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation {
            userSignedIn = false
        }
    }
    
    var body: some View {
        VStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            if let username = currentUsername{
                Text(username)
            }
            if let age = currentUserAge{
                Text("\(age)")
            }
            if let gender = currentUserGender{
                Text(gender)
            }
            Spacer()
            Text("SIGN OUT")
                .font(.title)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(15)
                .onTapGesture {
                    signOut()
                }
            
            
        }.font(.title)
            .padding()
            .padding(.vertical,40)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
