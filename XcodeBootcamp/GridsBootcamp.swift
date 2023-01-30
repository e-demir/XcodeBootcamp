//
//  GridsBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct GridsBootcamp: View {
    
    let columns : [GridItem] = [
        GridItem(.flexible(),spacing: 6),
        GridItem(.flexible(),spacing: 6),
        GridItem(.flexible(),spacing: 6),
        GridItem(.flexible(),spacing: 6),
    ]
    
    
    var body: some View {
        
        ScrollView{
            
            Rectangle()
                .fill(.yellow)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews:[.sectionHeaders]) {
                    Section {
                        ForEach(0..<15) { index in
                            Rectangle()
                                .fill(.blue)
                                .frame(height: 150)
                                
                        }
                    } header: {
                        Text("Section 1")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .background(Color.blue)
                            .font(.title)
                            .padding()
                            
                    }
                    Section {
                        ForEach(0..<15) { index in
                            Rectangle()
                                .fill(.red)
                                .frame(height: 150)
                                
                        }
                    } header: {
                        Text("Section 2")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .background(Color.red)
                            .font(.title)
                            .padding()
                            
                    }
                    

                    
                    
            }
        }
       
        
    }
}

struct GridsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridsBootcamp()
    }
}
