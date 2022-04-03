//
//  StartScreen.swift
//  QuizSwiftUI
//
//  Created by Fausto Guerrero Burguete on 01/04/22.
//

import Foundation
import SwiftUI

struct StartScreen:View{
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
       ZStack{
            VStack{
                Spacer()
                Button{
                    viewRouter.appState = .instructionScreen
                }label: {
                    Text("Iniciar")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .bold()
                        .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(25)
                }
                .padding(200)
            }
            .background(
                Image("SelectScreen")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                )
                
                
        }
       
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen(viewRouter: ViewRouter())
    }
}
