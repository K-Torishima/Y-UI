//
//  ContentView.swift
//  Y-UI
//
//  Created by 鳥嶋晃次 on 2024/07/27.
//

import SwiftUI

struct AppRoot: View {
    var body: some View {
        TabView {
            FontsRoot()
                .tabItem {
                    Image(systemName: "textformat.size")
                }
            ColorsRoot()
                .tabItem {
                    Image(systemName: "paintpalette.fill")
                }
            ComponentRoot()
                .tabItem {
                    Image(systemName: "rectangle.inset.topleft.filled")
                }
            SettingRoot()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
    }
}

#Preview {
    AppRoot()
}
