//
//  SettingRoot.swift
//  Y-UI
//
//  Created by 鳥嶋晃次 on 2024/07/27.
//

import SwiftUI

struct SettingRoot: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("SettingRoot")
            }
            .navigation(title: "Setting")
        }
    }
}
