//
//  Question1Screen.swift
//  QuizSwiftUI
//
//  Created by Fausto Guerrero Burguete on 02/04/22.
//

import Foundation
import SwiftUI

struct Question1Screen:View{
    
    @StateObject var viewRouter: ViewRouter
    @StateObject var counter: Counter
    @State private var correctAnswer = false
    @State private var selectedAnswer = 0
    
    var body: some View {
       ZStack{
        Color(.gray)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack{
            
            Text("1.-Which character from the NES was included in Smash Bros. Melee?").font(.system(size: 40))
                .padding(10)
            
            Spacer()
            
            let myr = MyRadioButtons(
                q1:"Excitebike racer",
                q2:"Ballon fighter",
                q3:"Ice climbers",
                q4:"Bubbles from clu clu land")
            myr
            
                Button{
                    //if(myr.currentlySelectedId != 0){
                        if myr.currentlySelectedId == 3 {
                            counter.count+=1
                        }
                    print("Correct: ", myr.currentlySelectedId)
                    print(counter.count)
                        viewRouter.appState = .question2Screen
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
                .padding(200)
            
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

struct Question1Screen_Previews: PreviewProvider {
    static var previews: some View {
        Question1Screen(viewRouter: ViewRouter(), counter: Counter())
    }
}

struct MyRadioButton: View {
    let id: Int
    let text: String
    //let correct: Bool
    @Binding var currentlySelectedId: Int
    var body: some View {
        Button(action: {
            self.currentlySelectedId = self.id
        }, label: { Text(text)
            .font(.system(size: 32, weight: .medium, design: .default))
            .bold()
            .frame(width: 500, height: 50, alignment: .center)
        })
            .foregroundColor(.black)
            .background(id == currentlySelectedId ? Color.yellow : Color.white)
        .cornerRadius(25)
        .padding(20)
        
    }
}


struct MyRadioButtons: View {
    let q1 : String
    let q2 : String
    let q3: String
    let q4: String
    @State var currentlySelectedId: Int = 0
    var body: some View {
        VStack {
            MyRadioButton(id: 1, text: q1, currentlySelectedId: $currentlySelectedId)
            MyRadioButton(id: 2, text:q2, currentlySelectedId: $currentlySelectedId)
            MyRadioButton(id: 3, text:q3, currentlySelectedId: $currentlySelectedId)
            MyRadioButton(id: 4, text:q4, currentlySelectedId: $currentlySelectedId)
        }
    }
}
