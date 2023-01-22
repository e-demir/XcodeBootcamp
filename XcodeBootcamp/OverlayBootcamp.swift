//
//  OverlayBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 22.01.2023.
//

import SwiftUI

struct OverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40, weight: .bold))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .top))
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple, radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("5")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            )
                            .shadow(color: .purple, radius: 10, x: 0, y: 10)
                        ,alignment: .bottomTrailing
                    )
            )
    }
}

struct OverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OverlayBootcamp()
    }
}
