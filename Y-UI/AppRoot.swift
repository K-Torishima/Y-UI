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
            FontsTab {
                VStack {}
            }
            .tabItem {
                Image(systemName: "textformat.size")
            }
            ColorsTab {
                VStack {}
            }
            .tabItem {
                Image(systemName: "paintpalette.fill")
            }
            ComponentTab {
                VStack {}
            }
            .tabItem {
                Image(systemName: "rectangle.inset.topleft.filled")
            }
            SettingTab {
                VStack {}
            }
            .tabItem {
                Image(systemName: "gearshape")
            }
        }
    }
}

#Preview {
    AppRoot()
}
