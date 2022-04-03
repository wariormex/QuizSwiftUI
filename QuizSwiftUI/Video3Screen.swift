//
//  Video3Screen.swift
//  QuizSwiftUI
//
//  Created by Fausto Guerrero Burguete on 02/04/22.
//

import SwiftUI
import AVKit

struct Video3Screen: View {
    
    @StateObject var viewRouter: ViewRouter
    @State var player = AVPlayer(url: URL(fileURLWithPath: createLocalUrl(vidName: "Video3", vidFormat: "mp4")!))
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                VideoPlayer(player: player)
                    .onAppear(){
                        player.play()
                    }
                Spacer()
                Button{
                    viewRouter.appState = .videoSelectScreen
                }label: {
                    Text("Return")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .bold()
                        .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(25)
                }
                .padding(20)
            }
        }
        
        
    }
}

struct Video3Screen_Previews: PreviewProvider {
    static var previews: some View {
        Video1Screen(viewRouter: ViewRouter())
    }
}
