//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct ProgressIndicators: View {
    
    @State private var progress = 0.5
    
    var body: some View {
        VStack {
            ListRow {
                ProgressView()
            }
            ListRow {
                ProgressView()
                    .progressViewStyle(.linear)
            }
            ListRow {
                ProgressView("Textを入れることができます", value: progress)
                   .progressViewStyle(.circular)
            }
            ListRow {
                ProgressView("Textを入れることができます", value: progress)
                   .progressViewStyle(.linear)
            }
            ListRow {
                // Viewを入れたりできる
                ProgressView {
                    Image(systemName: "ellipsis.bubble")
                    Text("Viewを入れたりできる")
                    VStack {
                        Text("hoge")
                        Text("hoge")
                    }
                    HStack {
                        VStack {
                            Text("hoge")
                            Text("hoge")
                        }
                        VStack {
                            Text("hoge")
                            Text("hoge")
                        }
                    }
                    .border(.red)
                }
            }
        }
    }
}

#Preview {
    ProgressIndicators()
}
