//
//  Question3Screen.swift
//  QuizSwiftUI
//
//  Created by Fausto Guerrero Burguete on 02/04/22.
//

import Foundation
import SwiftUI

struct Question3Screen:View{
    
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
            Text("3.-At what frame does fox's shine come out?").font(.system(size: 40))
                .padding(40)
            
            
            
            let myr = MyRadioButtons(
                q1:"1",
                q2:"2",
                q3:"3",
                q4:"5",
                currentlySelectedId: $currentlySelectedId)
            myr
            
                Button{
                    //if(myr.currentlySelectedId != 0){
                        if myr.currentlySelectedId == 1 {
                            counter.count+=1
                        }
                        print(counter.count)
                        viewRouter.appState = .question4Screen
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

struct Question3Screen_Previews: PreviewProvider {
    static var previews: some View {
        Question1Screen(viewRouter: ViewRouter(), counter: Counter())
    }
}
