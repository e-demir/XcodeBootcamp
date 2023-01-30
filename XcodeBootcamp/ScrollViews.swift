//
//  ScrollViews.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        ScrollView{
            VStack{
                ForEach(0..<100){ item in
                    ZStack{
                        Rectangle()
                            .fill(.yellow)
                            .frame(height: 300)
                        Text("\(item)")
                    }
                }
            }
        }
        
        
    }
}

struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViews()
    }
}
