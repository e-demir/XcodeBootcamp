//
//  PickerBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection : String = "Most liked"
    @State var options : [String] = ["Most liked","Most popular","Recently added"] 
    
    var body: some View {
        
        
        
        Picker(selection: $selection) {
            ForEach(options.indices) { index in
                Text(options[index]).tag(options[index])
            }
        } label: {
        }.pickerStyle(.segmented)

        
//        Picker(selection: $selection) {
//            ForEach(options, id: \.self) { option in
//                HStack {
//                    Text(option)
//                    Image(systemName: "heart.fill")
//                }.tag(option)
//
//            }
//        } label: {
//
//        }.pickerStyle(.menu)

        
//        VStack {
//
//            HStack{
//                Text("Selection is: ")
//                Text("\(selection)")
//            }
//            Picker(selection: $selection, label: Text("Picker"),content: {
//                ForEach(18..<100) { number in
//                    Text("\(number)").tag("\(number)")
//                }
//            })
//            .pickerStyle(.wheel)
////            .frame(maxWidth: .infinity)
////                .background(Color.gray.opacity(0.3))
//        }

    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
