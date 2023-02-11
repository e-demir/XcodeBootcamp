//
//  AsyncImageBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 11.02.2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    var body: some View {
        let url = URL(string: "https://pisum.photos/500")
        
        AsyncImage(url: url) { phase in
            switch phase{
            case .empty: ProgressView()
            case .failure : (Color.green)
            case.success(let image):
                    image
            default: Color.red
                
            }
        }
        
//        AsyncImage(url: url) { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        } placeholder: {
//            ProgressView()
//        }
        

    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
