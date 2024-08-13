//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct Sheets: View {
    
    @State var isPresented1 = false
    @State var isPresented2 = false
    
    var body: some View {
        Button("open sheet") {
            isPresented1.toggle()
        }
        .sheet(isPresented: $isPresented1, content: {
            Detail()
        })
        
        Button("fullScreenCover") {
            isPresented2.toggle()
        }
        .fullScreenCover(
            isPresented: $isPresented2,
            onDismiss: {
                print("dissmissed")
            },
            content: {
                Detail()
            }
        )
    }
}

struct Detail: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Button("dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    Sheets()
}
