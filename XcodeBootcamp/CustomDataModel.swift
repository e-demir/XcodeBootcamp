//
//  CustomDataModel.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct UserModel : Identifiable {
    let id : String = UUID().uuidString
    let displayName : String
    let userName : String
    let followerCount : Int
    let isApproved : Bool
}

struct CustomDataModel: View {
        
    @State var userList : [UserModel] = [
        UserModel(displayName: "Emrullah", userName: "e1demir", followerCount: 125, isApproved: true),
        UserModel(displayName: "Ayça", userName: "aaycatuncayy", followerCount: 87, isApproved: true),
        UserModel(displayName: "Kerim", userName: "fenasi", followerCount: 0, isApproved: false),
    ]
    
    @State var users : [String] =
    ["Emrullah","Ayça","Ahmet","Zehra"]
    
    var body: some View {
        NavigationView {
                List {
//                    ForEach(users, id: \.self) { item in
//                        Text(item)
//                    }
                    ForEach(userList) { user in
                        HStack(alignment: .center, spacing: 14.0){
                            Circle()
                                .frame(width: 35)
                            VStack(alignment: .leading){
                                Text(user.displayName).font(.headline)
                                Text("@\(user.userName)").font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            VStack{
                                Text("\(user.followerCount)").fontWeight(.black)
                                Text("followers").font(.caption).foregroundColor(.gray)
                            }
                            if user.isApproved{
                                Image(systemName:"checkmark.diamond.fill" ).renderingMode(.original)
                            }else{
                                Image(systemName: "checkmark.circle.badge.questionmark.fill").renderingMode(.none).accentColor(.red)                                
                            }
                        }
                    }
                }.listStyle(.inset)
                .navigationTitle("Users")
            }
    }
}

struct CustomDataModel_Previews: PreviewProvider {
    static var previews: some View {
        CustomDataModel()
    }
}
