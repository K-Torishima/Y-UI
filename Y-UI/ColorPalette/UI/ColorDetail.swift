//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct ColorDetail: View {
    
    private let data: ColorModel
    
    var body: some View {
        ZStack {
            Color(data.color)
                .ignoresSafeArea()
        }
        .navigation(title: data.name)
    }

    init(data: ColorModel) {
        self.data = data
    }
}
