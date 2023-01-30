//
//  ForeachBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct ForeachBootcamp: View {
    var body: some View {
        VStack{
            ForEach(1..<11){ index in
                ZStack {
                    Circle()
                        .fill(.red)
                        .frame(width: 50, height: 50)
                    Text("\(index)")
                        .foregroundColor(.white)
                        
                }
            }
        }
    }
}

struct ForeachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamp()
    }
}

