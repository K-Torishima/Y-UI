//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct ContextualMenus: View {
    var body: some View {
        VStack {
            Text("open menu")
                .padding()
                .background(Color.backgroundSecondary)
                .clipShape(.rect(cornerRadius: 10.0))
                .contextMenu(ContextMenu(menuItems: {
                    Text("Menu Item 1")
                    Text("Menu Item 2")
                    Text("Menu Item 3")
                }))
        }
    }
}

#Preview {
    ContextualMenus()
}
