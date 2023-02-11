//
//  ListSwipeActionsBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 11.02.2023.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    @State var fruits : [String] = [
    "Banana","Apple","Orange","Peach"]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Delete"){}.tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Save"){}.tint(.green)
                        
                        Button("Like"){}.tint(.blue)
                    }
            }
        }
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
