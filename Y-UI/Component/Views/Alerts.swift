//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct Alerts: View {
    
    @State var isPresented1 = false
    @State var isPresented2 = false
    
    struct SampleType {
        let name: String
        
        init(name: String) {
            self.name = name
        }
    }
    
    var body: some View {
        VStack {
            Button("show 1") {
                isPresented1.toggle()
            }
            .alert("hoge", isPresented: $isPresented1) {
                Button("destructive", role: .destructive) {
                    print("destructive")
                }
            }
            
            // 全部のせ
            Button("show 2") {
                isPresented2.toggle()
            }
            .alert(
                "タイトル",
                isPresented: $isPresented2,
                presenting: SampleType(name: "サンプルさん"),
                actions: { item in
                    Button("action") {
                        print(item.name)
                    }
                }, message: { item in
                    Text("\(item.name) message")
                }
            )
        }
    }
}

#Preview {
    Alerts()
}
