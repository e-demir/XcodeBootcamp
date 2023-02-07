//
//  AppStorageBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 7.02.2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUsername : String?
    
    
    var body: some View {
        VStack {
            if let name = currentUsername{
                Text(name)
            }
            Button("Save"){
              currentUsername = "Mahmut"
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
