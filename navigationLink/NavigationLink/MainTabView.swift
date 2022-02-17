//
//  MainTabView.swift
//  navigationLink
//
//  Created by Memo Figueredo on 16/2/22.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var appState: AppState
    var body: some View {
        TabView {
            NavigationView {
                RootContentView()
                .id(appState.rootViewId)
                    // any change to rootViewId
                    // triggers the popToRootView behavior
            }.tabItem {
                Text("Tab1")
            }

            Text("Some other tab content").tabItem {
                Text("Tab 2")
            }

            Text("Some other tab content").tabItem {
                Text("Tab 3")
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
