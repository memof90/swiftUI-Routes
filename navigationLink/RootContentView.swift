//
//  ContentView.swift
//  navigationLink
//
//  Created by Memo Figueredo on 16/2/22.
//

import SwiftUI

struct RootContentView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            Text("Root is level 1")
            NavigationLink(destination: ChildView(level: 2)) {
                Text("Click to launch a child")
            }
        }
    }
}

struct RootContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootContentView()
    }
}
