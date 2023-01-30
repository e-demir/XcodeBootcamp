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
            LazyVStack{
                ForEach(0..<200) { index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack {
                            ForEach(0..<300) { index in
                                RoundedRectangle(cornerRadius: 20 )
                                    .fill(.cyan)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
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
