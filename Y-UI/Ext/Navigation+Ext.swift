//
//  Navigation+Ext.swift
//  Y-UI
//
//  Created by 鳥嶋晃次 on 2024/07/27.
//

import SwiftUI

extension View {
    
    func navigation(title: String) -> some View {
        self
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.large)
    }
}
