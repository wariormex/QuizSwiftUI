//
//  ViewRouter.swift
//  QuizSwiftUI
//
//  Created by Fausto Guerrero Burguete on 01/04/22.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject{
    @Published var appState: AppStates = .startScreen
}
