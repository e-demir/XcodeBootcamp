//
//  IntroView.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 8.02.2023.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("userSignedIn") var userSignedIn : Bool = false
    
    var body: some View {
        ZStack{
            //bg
            RadialGradient(colors: [.purple,.blue], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            
            //fg
            if userSignedIn{
                ProfileView()
            }else{
                OnBoardingView()
            }
            
            
            //if user signed in
            //profileView
            //else
            //onBoardingView
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
