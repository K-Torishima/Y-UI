//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct Sliders: View {
    
    @State var value1: Double = 0.0
    @State var value2: Double = 0.0
    
    var body: some View {
        VStack {
            ListRow {
                Text("\(value1)")
                Slider(value: $value1, in: 0...100)
            }
            ListRow {
                Text("\(value2, specifier: "%.0f")")
                Slider(value: $value2, in: 0...100, step: 10)
            }
        }
    }
}

#Preview {
    Sliders()
}
