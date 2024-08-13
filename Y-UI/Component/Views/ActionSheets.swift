//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct ActionSheets: View {
    
    @State private var isPresented1 = false
    @State private var isPresented2 = false
    
    struct Hoge {
        let name: String
        
        init(name: String) {
            self.name = name
        }
    }
    
    var body: some View {
        VStack {
            // 簡単なやつ
            Button("open ActionSeet1") {
                isPresented1.toggle()
            }
            .confirmationDialog("タイトル", isPresented: $isPresented1) {
                Button("タイトル1") {
                    print("hoge")
                }
                Button("タイトル2") {
                    print("hoge")
                }
                Button("タイトル3") {
                    print("hoge")
                }
                Button("タイトル4", role: .destructive) {
                    print("destructive")
                }
                // キャンセルの実装を自分で行いたいならこれを使う
                // 使わない場合は、ただのキャンセルが実装される
                Button("カスタムキャンセル", role: .cancel) {
                    print("destructive")
                }
            }
            .padding()
            
            // 全部のせ
            Button("open ActionSeet2") {
                isPresented2.toggle()
            }
            .confirmationDialog(
                "タイトル",
                isPresented: $isPresented2,
                titleVisibility: .visible,
                presenting: Hoge(name: "サンプルネーム"),
                actions: { hoge in
                    Button("タイトル1") {
                        print(hoge.name)
                    }
                    Button("タイトル2") {
                        print("hoge")
                    }
                    Button("タイトル3") {
                        print("hoge")
                    }
                },
                message: { hoge in
                    Text(hoge.name)
                }
            )
        }
    }
}

#Preview {
    ActionSheets()
}
