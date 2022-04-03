//
//  VideoSelectScreen.swift
//  QuizSwiftUI
//
//  Created by Fausto Guerrero Burguete on 01/04/22.
//

import SwiftUI
import AVKit

struct VideoSelectScreen: View {
    
    @StateObject var viewRouter: ViewRouter
    
    
    
    
    var body: some View {
        ZStack{
            Color(.gray)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                              //VideoPlayer(player: AVPlayer(url: URL(fileURLWithPath: createLocalUrl()!)))
                HStack{
                Image("NintendoLogo").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))  .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                    Spacer()
            }
                
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                              //print("button pressed")
                            viewRouter.appState = .video1Screen
                            }) {
                        Image("Thumbnail1").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))  .resizable()
                            .scaledToFit()
                            .frame(height: 130)
                            
                            }
                    Spacer()
                    Button(action: {
                            viewRouter.appState = .video2Screen

                            }) {
                        Image("Thumbnail2").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))  .resizable()
                            .scaledToFit()
                            .frame(height: 130)
                            }
                    Spacer()
                    Button(action: {
                            viewRouter.appState = .video3Screen

                            }) {
                        Image("Thumbnail3").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))  .resizable()
                            .scaledToFit()
                            .frame(height: 130)
                            }
                    Spacer()
                }
                Spacer()
                Button{
                    viewRouter.appState = .question1Screen
                }label: {
                    Text("Quiz")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .bold()
                        .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(25)
                }
                .padding(100)
            }
        }
    }
}

struct VideoSelectScreen_Previews: PreviewProvider {
    static var previews: some View {
        VideoSelectScreen(viewRouter: ViewRouter())
    }
}

func createLocalUrl(vidName: String, vidFormat: String) -> String? {
    
        guard let path = Bundle.main.path(forResource: vidName, ofType: vidFormat) else {
            return "Error"
        }
        
        return path
    }
/*
VStack{
    VideoPlayer(player: AVPlayer(url: URL(fileURLWithPath: createLocalUrl()!)))
}
*/
