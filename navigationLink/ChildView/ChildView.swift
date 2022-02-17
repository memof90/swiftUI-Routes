//
//  ChildView.swift
//  navigationLink
//
//  Created by Memo Figueredo on 16/2/22.
//

import SwiftUI

struct ChildView: View {
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var appState: AppState
    let level:Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Child at level: \(level)")

            NavigationLink(destination: ChildView(level: level + 1)) {
              Text("Push another child")
            }

            Button("Pop up 1 level", action: {
                presentation.wrappedValue.dismiss()
            })

            Button("Pop to root", action: {
                appState.rootViewId = UUID()
            })
        }
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView( level: 2)
    }
}
