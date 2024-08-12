//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct TextFields: View {
    
    @State private var inputText: String = ""
    
    //TextFieldは入力するところと、枠の部分は別としてUIを組むといい
    var body: some View {
        VStack {
            ListRow {
                TextField("入力してください", text: $inputText)
                    .padding()
                    .border(.black)
            }
            
            
            VStack {
                TextField("入力してください", text: $inputText)
                    .padding()
                    .border(.black)
            }
            .padding()
            
            
            VStack {
                TextField("入力してください", text: $inputText)
                    .padding()
            }
            .background(Color.backgroundSecondary)
            .clipShape(.rect(cornerRadius: 10))
            .padding()
            
            
            ListRow {
                VStack {
                    Form {
                        TextField("入力してください", text: $inputText)
                        
                        //.padding()
                        
                    }
                    

                }
            }
        }
    }
}

#Preview {
    TextFields()
}
