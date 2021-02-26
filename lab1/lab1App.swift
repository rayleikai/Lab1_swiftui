//
//  lab1App.swift
//  lab1
//
//  Created by YuTech x CBIC on 2021/2/24.
//

import SwiftUI

@main
struct lab1App: App {
    @StateObject var game = Lab1_emoji()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }

}
