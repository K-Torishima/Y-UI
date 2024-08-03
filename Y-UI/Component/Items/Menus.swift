//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct Menus: View {
    var body: some View {
        VStack(spacing: 20) {
            ListRow {
                Menu("menu") {
                    Text("menu1")
                    Text("menu2")
                    Text("menu3")
                    Text("menu4")
                }
            }
            ListRow {
                Menu {
                    Text("menu1")
                    Text("menu2")
                    Text("menu3")
                    Text("menu4")
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
            }
            ListRow {
                Menu("IconとText", systemImage: "ellipsis.circle") {
                    Text("menu1")
                    Text("menu2")
                    Text("menu3")
                    Text("menu4")
                }
            }
            ListRow {
                Menu {
                    Text("menu1")
                    Text("menu2")
                    Text("menu3")
                    Text("menu4")
                } label: {
                    YButton(
                        text: "text",
                        textsize: 20,
                        labelColor: .white,
                        backgroundColor: .yNavy,
                        cornerRadius: 20,
                        height: 50
                    ) {
                        // ここは実行されない
                    }
                    .frame(width: 100)
                    
                } primaryAction: {
                    // こっちだけ実行される
                    print("primaryAction")
                }
            }
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    Menus()
}
