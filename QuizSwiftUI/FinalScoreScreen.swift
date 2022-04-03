//
//  FinalScoreScreen.swift
//  QuizSwiftUI
//
//  Created by Fausto Guerrero Burguete on 02/04/22.
//

import SwiftUI

struct FinalScoreScreen: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var counter: Counter
    @State var progressValue: Float = Float(5/6.0)//counter/6.0
        
        var body: some View {
            ZStack {
                Color(.gray)
                    .opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                
                                    
                Spacer()
                VStack {
                    Text("Tu Puntacion Final")
                        .font(.system(size: 64, weight: .medium, design: .default))
                        .bold()
                        .foregroundColor(.black)
                        .padding(20.0)
                    ProgressBar(progress: self.$progressValue)
                        .frame(width: 350.0, height: 350.0)
                        .padding(40.0)
                    Button(action: {
                        viewRouter.appState = .startScreen
                        counter.count = 0
                    }, label: {
                        Text("Reiniciar")
                            .font(.system(size: 32, weight: .medium, design: .default))
                            .bold()
                            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(25)
                    })
                    .padding(40.0)
                }
                Spacer()
            }
            .onAppear(){
                progressValue = Float(Float(counter.count)/6.0)
            }
            
        }
    func incrementProgress() {
        let randomValue = Float(5/6.0)
        self.progressValue += randomValue
    }
}

struct FinalScoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        FinalScoreScreen(viewRouter: ViewRouter(),counter: Counter())
    }
}


struct ProgressBar: View {
    @Binding var progress: Float
        
        var body: some View {
            ZStack {
                Circle()
                    .stroke(lineWidth: 100.0)
                    .opacity(0.3)
                    .foregroundColor(Color.red)
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 100.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color.red)
                    .rotationEffect(Angle(degrees: 270.0))
                    .animation(.linear)

                Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
