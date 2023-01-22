//
//  BackgroundBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 22.01.2023.
//

import SwiftUI

struct BackgroundBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
//                Color.red
                Circle()
                    //.fill(.red)
                    .fill(LinearGradient(colors: [.red,.blue], startPoint:.top, endPoint: .bottom))
                    .frame(width: 100, height: 100)
            )
            .background(
                Circle()
                    .fill(.yellow)
                    .frame(width: 120, height: 120)
            )
    }
}

struct BackgroundBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBootcamp()
    }
}
