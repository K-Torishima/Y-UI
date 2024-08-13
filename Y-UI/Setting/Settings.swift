//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

// 外観モードをアプリ単体で設定できるようにする
public struct AppearanceMode: EnvironmentKey {
    public static var defaultValue: Binding<ColorScheme> = .constant(.light)
}

extension EnvironmentValues {
    var appearanceMode: Binding<ColorScheme> {
        get { self[AppearanceMode.self] }
        set { self[AppearanceMode.self] = newValue }
    }
}

struct Settings: View {
    
    @Environment(\.appearanceMode) private var appearanceMode
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        List {
            Section {
                Button("dark") {
                    appearanceMode.wrappedValue = .dark
                   
                }
                Button("light") {
                    appearanceMode.wrappedValue = .light
                }
                Text(colorScheme == .dark ? "Dark" : "Light")
            } header: {
                Text("Color Scheme")
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }
            .headerProminence(.increased)
            
            Section {
                Text("")
                Text("")
                Text("")
                
            } header: {
                Text("タイトル")
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }
            .headerProminence(.increased)

            
        }
    }
}

#Preview {
    Settings()
}
