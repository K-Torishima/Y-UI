//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct Popovers: View {
    
    @State var isPresented1 = false
    @State var isPresented2 = false
    @State var isPresented3 = false
    @State var isPresented4 = false
    @State var isPresented5 = false
    
    var body: some View {
        VStack {
            Button("open popover") {
                isPresented1.toggle()
            }
            .popover(isPresented: $isPresented1, content: {
                Text("😃")
                    .presentationCompactAdaptation(.popover)
            })
            Spacer()
            HStack {
                Button("open ") {
                    isPresented2.toggle()
                }
                .popover(isPresented: $isPresented2, content: {
                    Text("😃")
                        .presentationCompactAdaptation(.popover)
                })
                Spacer()
                Button("open ") {
                    isPresented3.toggle()
                }
                .popover(isPresented: $isPresented3, content: {
                    Text("😃")
                        .presentationCompactAdaptation(.popover)
                })
                Spacer()
                Button("open ") {
                    isPresented4.toggle()
                }
                .popover(isPresented: $isPresented4, content: {
                    Text("😃")
                        .presentationCompactAdaptation(.popover)
                })
            }
            Spacer()
            Button("open popover") {
                isPresented5.toggle()
            }
            .popover(isPresented: $isPresented5, content: {
                Text("😃")
                    .presentationCompactAdaptation(.popover)
            })
        }

    }
}

#Preview {
    Popovers()
}
