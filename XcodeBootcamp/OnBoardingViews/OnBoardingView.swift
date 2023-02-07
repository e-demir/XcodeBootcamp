//
//  OnBoardingView.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 8.02.2023.
//

import SwiftUI

struct OnBoardingView: View {
    
    // OnBoarding states:
    // 0 - Welcome Screen
    // 1 - Add name
    // 2 - Add age
    // 3 - Add gender
    
    @State var onBoardingState : Int = 0
    
    
    var body: some View {
        ZStack{
            //content
            ZStack{
                switch onBoardingState{
                case 0: WelcomeSection
                case 1: WelcomeSection
                case 2: WelcomeSection
                case 3: WelcomeSection
                default:WelcomeSection
                }
            }
            
            //buttons
            VStack{
                Spacer()
                BottomButton()
            }
        }.padding(15)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView().background(Color.purple)
    }
}

private var WelcomeSection: some View{
    VStack(spacing: 40) {
        Spacer()
        Image(systemName: "heart.text.square.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 250,height: 250)
        .foregroundColor(.white)
        
        Text("Find your coding crash")
            .foregroundColor(.white)
            .font(.title)
            .overlay(alignment: .bottom) {
                Capsule(style: .continuous)
                    .foregroundColor(.white)
                    .frame(height: 3)
                    .offset(y:5)
            }
        Text("This is a testing app to find the best match for pair coding.")
            .foregroundColor(.white)
            .font(.headline)
        Spacer()
        Spacer()
            
    }.padding(30)
        .multilineTextAlignment(.center)
}

private struct BottomButton: View {
    var body: some View {
        Text("Sign in")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(15)
            .onTapGesture {
                
            }
    }
}
