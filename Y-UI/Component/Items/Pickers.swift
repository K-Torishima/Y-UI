//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct Pickers: View {
    
    @State var selectionValue: String = ""
    
    var body: some View {
        VStack(spacing: 30) {
            ScrollView {
                ListRow {
                    Picker("sample", selection: $selectionValue) {
                        Text("text1").tag("1")
                        Text("text2").tag("2")
                        Text("text3").tag("3")
                        Text("text4").tag("4")
                    }
                    .pickerStyle(.automatic)
                }
                ListRow {
                    Picker("sample", selection: $selectionValue) {
                        Text("text1").tag("1")
                        Text("text2").tag("2")
                        Text("text3").tag("3")
                        Text("text4").tag("4")
                    }
                    .pickerStyle(.inline)
                }
                ListRow {
                    Picker("sample", selection: $selectionValue) {
                        Text("text1").tag("1")
                        Text("text2").tag("2")
                        Text("text3").tag("3")
                        Text("text4").tag("4")
                    }
                    .pickerStyle(.menu)
                }
                ListRow {
                    Picker("sample", selection: $selectionValue) {
                        Text("text1").tag("1")
                        Text("text2").tag("2")
                        Text("text3").tag("3")
                        Text("text4").tag("4")
                    }
                    .pickerStyle(.navigationLink)
                }
                ListRow {
                    Picker("sample", selection: $selectionValue) {
                        Text("text1").tag("1")
                        Text("text2").tag("2")
                        Text("text3").tag("3")
                        Text("text4").tag("4")
                    }
                    .pickerStyle(.palette)
                }
                ListRow {
                    Picker("sample", selection: $selectionValue) {
                        Text("text1").tag("1")
                        Text("text2").tag("2")
                        Text("text3").tag("3")
                        Text("text4").tag("4")
                    }
                    .pickerStyle(.segmented)
                }
                ListRow {
                    Picker("sample", selection: $selectionValue) {
                        Text("text1").tag("1")
                        Text("text2").tag("2")
                        Text("text3").tag("3")
                        Text("text4").tag("4")
                    }
                    .pickerStyle(.wheel)
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    Pickers()
}
