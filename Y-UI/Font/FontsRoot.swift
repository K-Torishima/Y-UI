//
//  FontScreen.swift
//  Y-UI
//
//  Created by 鳥嶋晃次 on 2024/07/27.
//

import SwiftUI

struct FontsRoot: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                Section("section test") {
                    NavigationLink {
                        
                    } label: {
                        Text("Sample")
                    }
                }
            }
            .navigation(title: "Font")
        }
    }
}
