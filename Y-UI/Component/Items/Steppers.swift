//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct Steppers: View {
    
    @State var count1 = 0
    
    @State var count2 = 0
    
    var body: some View {
        VStack {
            ListRow {
                Stepper(
                    "\(count1)",
                    onIncrement: {
                        count1 += 1
                    },
                    onDecrement: {
                        count1 -= 1
                    }
                )
                .padding()
            }
            /// レンジとかも決めれる
            ListRow {
                Stepper(
                    value: $count2,
                    in: 0...10, // 範囲
                    step: 1 // 〇〇ずつあげれる
                ) {
                    Text("\(count2)")
                }
                .padding()
            }
        }
    }
}

#Preview {
    Steppers()
}
