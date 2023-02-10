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
    
    // ONBOARDING INPUTS
    @State var onBoardingState : Int = 0
    @State var nameTextField : String = ""
    @State var ageField : Double = 35
    @State var genderField : String = ""
    let customTransition : AnyTransition =
        .asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading))
    // FOR ALERT
    @State var isShowAlert: Bool = false
    @State var alertTitle: String = ""
    
    // APP STORAGE
    @AppStorage("name") var currentUsername : String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender : String?
    @AppStorage("userSignedIn") var userSignedIn : Bool = false
    
    
    
    var body: some View {
        ZStack{
            //content
            ZStack{
                switch onBoardingState{
                case 0: WelcomeSection
                        .transition(customTransition)
                case 1: AddNameSection
                        .transition(customTransition)
                case 2: AddAgeSection
                        .transition(customTransition)
                case 3: AddGenderSection
                        .transition(customTransition)
                default:RoundedRectangle(cornerRadius: 10).fill(.red)
                }
            }
            
            //buttons
            VStack{
                Spacer()
                BottomButton
            }
        }.padding(15)
            .alert(isPresented: $isShowAlert) {
                Alert(title: Text(alertTitle))
            }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView().background(Color.purple)
    }
}

// MARK: COMPONENTS

extension OnBoardingView{
    
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
    private var AddNameSection: some View{
        VStack(spacing: 40) {
            Spacer()
            Text("What is your name?")
                .foregroundColor(.white)
                .font(.title)
            TextField("Your name here...", text: $nameTextField)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .foregroundColor(.purple)
                .cornerRadius(23)
                .fontWeight(.bold)
            Spacer()
            Spacer()
                
        }.padding(30)
            .multilineTextAlignment(.center)
    }
    private var AddAgeSection: some View{
        VStack(spacing: 40) {
            Spacer()
            Text("What is your age?")
                .foregroundColor(.white)
                .font(.title)
            Text(String(format:"%.0f",ageField))
                .font(.title)
                .foregroundColor(.white)
            Slider(value: $ageField, in: 18...99, step: 1)
                .accentColor(.white)
            
                
            Spacer()
            Spacer()
                
        }.padding(30)
            .multilineTextAlignment(.center)
    }
    private var AddGenderSection: some View{
        VStack(spacing: 40) {
            Spacer()
            Text("What is your gender?")
                .foregroundColor(.white)
                .font(.largeTitle)
            
            Text(genderField)
                .font(.title)
                .foregroundColor(.white)
            
            Picker(selection: $genderField) {
                Text("Female").tag("Female")
                Text("Male").tag("Male")
            } label: {
                    Text("Select a gender")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                
            }.pickerStyle(.menu)
                .tint(.white)
                

            
                
            Spacer()
            Spacer()
                
        }.padding(30)
            .multilineTextAlignment(.center)
    }
    private var BottomButton: some View {
        Text(onBoardingState == 0 ? "Sign up!" :
                onBoardingState == 3 ? "Finish":
                "Next"
        )
                .font(.headline)
                .foregroundColor(.purple)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(15)
                .onTapGesture {
                    handleNextButtonPressed()
                }
    }
    
}

// MARK: FUNCTIONS

extension OnBoardingView{
    
    func handleNextButtonPressed(){
        
        // CHECK INPUTS
        switch onBoardingState{
        case 1:
            guard nameTextField.count >= 3 else{
                showAlert(title: "Name must be longer than 2!")
                return
            }
        case 3:
            guard genderField.count >= 1 else{
                showAlert(title: "Please select a gender")
                return
            }
        default:
            break
        }
        
        
        // GO TO NEXT SECTION
        if onBoardingState == 3{
            signIn()
        }else{
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }                             
    }
    
    func showAlert(title:String){
        alertTitle = title
        isShowAlert.toggle()
    }
    
    func signIn(){
        withAnimation {
            currentUsername = nameTextField
            currentUserAge = Int(ageField) 
            currentUserGender = genderField
            userSignedIn = true
        }
    }
}



