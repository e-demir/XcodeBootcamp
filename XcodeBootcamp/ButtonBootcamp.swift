//
//  ButtonBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "Hello there :D"
    @State var count: Int = 0
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
            
            Button("INCREASE ⬆️") {
                self.count += 1
            }
            Button("DECREASE ⬇️") {
                self.count -= 1
            }
            
            
            Button {
                self.count += 100
            } label: {
               Circle()
                    .fill(.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
            }

            
            
            Button {
                self.count = 0
            } label: {
                Text("RESET")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.blue
                            .cornerRadius(20)
                            .shadow(radius: 20)
                    )
            }
            
            Button {
                
            } label: {
                Text("Finish".uppercased())
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                    .padding(17)
                    .padding(.horizontal, 40)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3)
                    )
            }


        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
