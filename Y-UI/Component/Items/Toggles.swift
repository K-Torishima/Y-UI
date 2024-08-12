//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct Toggles: View {
    
    @State var value = false
        
    var body: some View {
        VStack {
            ListRow {
                Toggle(isOn: $value, label: {
                    Text("Sample Toggle")
                })
            }
            ListRow {
                Toggle(isOn: $value) {}
                .labelsHidden()
                .tint(.red)
                
            }
            
            ListRow {
                Toggle(isOn: $value) {
                    Text("プライマリ")
                    Text("セカンダリ")
                }
                .tint(.blue)
            }
            ListRow {
                Toggle(
                    "プライマリ",
                    systemImage: "dot.radiowaves.left.and.right",
                    isOn: $value
                )
            }
            ListRow {
                Toggle(isOn: $value, label: {
                    Text("toggleStyle switch")
                })
                .toggleStyle(.switch)
            }
            ListRow {
                Toggle(isOn: $value, label: {
                    Label("Mute", systemImage: "speaker.slash.fill")
                       
                })
                .toggleStyle(.button)
            }
        }
        .padding()
    }
}

#Preview {
    Toggles()
}
