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
            TypographyTab {
                VStack {
                    NavigationLink {
                        VStack {}
                    } label: {
                        Text("text")
                    }

                }
            }
            .tabItem {
                Image(systemName: "textformat.size")
            }
            ColorPaletteTab {
                ColorList()
            }
            .tabItem {
                Image(systemName: "paintpalette.fill")
            }
            ComponentTab {
                ItemList()
            }
            .tabItem {
                Image(systemName: "rectangle.inset.topleft.filled")
            }
            SettingTab {
                Settings()
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
