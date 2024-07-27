//  Created by 鳥嶋晃次 on 2024/07/27.
//

import SwiftUI

struct SettingTab<Content: View>: View {
    private let content: Content
    
    var body: some View {
        NavigationStack {
            content
                .navigation(title: "Setting")
        }
    }
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
}
