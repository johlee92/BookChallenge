//
//  BookChallengeApp.swift
//  BookChallenge
//
//  Created by Johnathan Lee on 4/18/22.
//

import SwiftUI

@main
struct BookChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BookModel())
        }
    }
}
