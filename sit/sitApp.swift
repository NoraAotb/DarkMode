//
//  sitApp.swift
//  sit
//
//  Created by Norah Abass AlOtaibi on 11/07/1444 AH.
//

import SwiftUI

@main

struct sitApp: App {
//    for dark mood
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            
            
            ContentView()
            //    for dark mood
                .preferredColorScheme(isDarkMode ? .dark : .light)

        }
    }
}
