//  Created by 鳥嶋晃次 on 2024/07/27.
//

import SwiftUI

struct ColorsTab<Content: View>: View {
    private let content: Content
    
    var body: some View {
        NavigationStack {
            content
                .navigation(title: "Colors")
        }
    }
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
}
