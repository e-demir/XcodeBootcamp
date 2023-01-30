//
//  InitializerBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple{
            self.title = "Apple"
            self.backgroundColor = .green
        }else{
            self.title = "Banana"
            self.backgroundColor = .yellow
        }
        
        
    }
    
    enum Fruit{
        case banana
        case apple
    }
    
    var body: some View {
        VStack(spacing:20){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.title )
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializerBootcamp(count: 5, fruit: .apple)
    }
}
