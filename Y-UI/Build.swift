//
//  Build.swift
//  Y-UI
//
//  Created by 鳥嶋晃次 on 2024/07/27.
//

import SwiftUI

@main
struct Build: App {
    
    @State private var scheme: ColorScheme = .light
    
    var body: some Scene {
        WindowGroup {
            AppRoot()
                .environment(\.appearanceMode, $scheme)
                .preferredColorScheme(scheme)
        }
    }
}
