//  Created by 鳥嶋晃次 on 2024/07/28.
//

import SwiftUI

struct ColorList: View {
    
    private let colorList: [ColorModel] = [
        .init(color: .yBeige, name: "Beige"),
        .init(color: .yBlack, name: "Black"),
        .init(color: .yBlue, name: "Blue"),
        .init(color: .yBordeaux, name: "Bordeaux"),
        .init(color: .yBrown, name: "Brown"),
        .init(color: .yCamel, name: "Camel"),
        .init(color: .yCharcoal, name: "Charcoal"),
        .init(color: .yDarkBlue, name: "DarkBlue"),
        .init(color: .yGold, name: "Gold"),
        .init(color: .yGray, name: "Gray"),
        .init(color: .yGreen, name: "Green"),
        .init(color: .yIndigo, name: "Indigo"),
        .init(color: .yIvory, name: "Ivory"),
        .init(color: .yKhaki, name: "Khaki"),
        .init(color: .yLightBrown, name: "LightBrown"),
        .init(color: .yLightGrey, name: "LightGrey"),
        .init(color: .yNavy, name: "Navy"),
        .init(color: .yOffWhite, name: "OffWhite"),
        .init(color: .yRed, name: "Red"),
        .init(color: .ySilver, name: "Silver"),
        .init(color: .yWhite, name: "White"),
    ]
    
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @State var isPresented: Bool = false
    @State var selctedData: ColorModel?
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(colorList, id: \.id) { data in
                    ColorListRow(data: data) {
                           selctedData = data
                        }
                }
            }
            .padding(.horizontal, 16)
            .sheet(item: $selctedData) { data in
                ColorDetail(data: data)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ZStack {
            Color.backgroundPrimary
            ColorList()
        }
    }
}
