//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct ColorListRow: View {
    
    private let data: ColorModel
    private let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Circle()
                    .fill(Color(data.color))
                    .padding(32)
            }
            .background(.backgroundSecondary)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .buttonStyle(.plain)
    }
    
    init(
        data: ColorModel,
        action: @escaping () -> Void
    ) {
        self.data = data
        self.action = action
    }
}
