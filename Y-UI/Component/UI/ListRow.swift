//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct ListRow<Content: View> : View {
    let content: Content
    var body: some View {
        content
            .frame(maxWidth: .infinity)
            .padding(16)
            .background(.backgroundSecondary)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
}

#Preview {
    ListRow {
        Text("hoge huga")
    }
}
