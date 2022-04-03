//
//  Question6Screen.swift
//  QuizSwiftUI
//
//  Created by Fausto Guerrero Burguete on 02/04/22.
//

import Foundation
import SwiftUI

struct Question6Screen:View{
    
    @StateObject var viewRouter: ViewRouter
    @StateObject var counter: Counter
    @State private var correctAnswer = false
    @State private var selectedAnswer = 0
    @State var currentlySelectedId: Int = 0
    
    var body: some View {
       ZStack{
        Color(.gray)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack{
            Spacer()
            Text("6.-Which of the ofllowing techniques reduces landing lag?").font(.system(size: 40))
                .padding(40)
            
            
            
            let myr = MyRadioButtons(
                q1:"Waveshine",
                q2:"Chaingrab",
                q3:"Wobbling",
                q4:"L-cancel",
                currentlySelectedId: $currentlySelectedId)
            myr
            
                Button{
                    //if(myr.currentlySelectedId != 0){
                        if myr.currentlySelectedId == 4 {
                            counter.count+=1
                        }
                    print("Correct: " , myr.currentlySelectedId)
                        print(counter.count)
                        viewRouter.appState = .finalScoreScreen
                //}
                }label: {
                    Text("Enviar")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .bold()
                        .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(25)
                }
                .padding(40)
            
        }
                
                
        }
       .background(Color.gray
           //Image("SelectScreen")
               //.resizable()
               //.scaledToFill()
               //.edgesIgnoringSafeArea(.all)
           )
    }
}

struct Question6Screen_Previews: PreviewProvider {
    static var previews: some View {
        Question1Screen(viewRouter: ViewRouter(), counter: Counter())
    }
}
