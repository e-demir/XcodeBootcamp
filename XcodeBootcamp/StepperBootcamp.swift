//
//  StepperBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue : CGFloat = 100
    
    func incrementWidth(amount: CGFloat){
        withAnimation {
            stepperValue += amount
            if stepperValue >= 400{
                stepperValue = 400
            }
        }
    }
    func decrementWidth(amount: CGFloat){
        withAnimation() {
            stepperValue -= amount
            if stepperValue <= 100{
                stepperValue = 100
            }
            
        }
    }
    
    var body: some View {
        
//        Stepper("Stepper \(stepperValue)", value:$stepperValue)
        VStack{
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: stepperValue, height: stepperValue)
            
            Stepper("Stepper") {
                incrementWidth(amount: 100)
            } onDecrement: {
                decrementWidth(amount: 100)
                    
            }
            .padding(50)
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
