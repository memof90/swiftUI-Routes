//
//  navigationLinkApp.swift
//  navigationLink
//
//  Created by Memo Figueredo on 16/2/22.
//

import SwiftUI

@main
struct navigationLinkApp: App {
    @ObservedObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(appState)
        }
    }
}
