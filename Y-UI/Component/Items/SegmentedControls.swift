//  Copyright © Koji Torishima All Rights Reserved.

import UIKit
import SwiftUI

struct SegmentedControls: View {
    
    enum Selection: CaseIterable, Hashable {
        case first
        case second
        case third
        
        var text: String {
            switch self {
            case .first:
                return "first"
            case .second:
                return "second"
            case .third:
                return "third"
            }
        }
    }
    
    @State var selection: Selection = .first
    
    var body: some View {
        VStack {
            ListRow {
                Picker("hoge", selection: $selection) {
                    ForEach(Selection.allCases, id: \.hashValue) {
                        Text($0.text).tag($0)
                    }
                }
                .pickerStyle(.segmented)
                switch selection {
                case .first:
                    Image(systemName: "1.circle")
                case .second:
                    Image(systemName: "2.circle")
                case .third:
                    Image(systemName: "3.circle")
                }
            }
        }
    }
    
    init() {
        // 設定は appearanceで行う
//        let appearance = UISegmentedControl.appearance()
//        let font = UIFont.boldSystemFont(ofSize: 12)
//        // 選択時の背景色
//        appearance.selectedSegmentTintColor = .black.withAlphaComponent(0.75)
//        
//        // 通常時のフォントとフォント色
//        appearance.setTitleTextAttributes([.font: font, .foregroundColor: UIColor.black], for: .normal)
//        
//        // 選択時のフォントとフォント色
//        appearance.setTitleTextAttributes([.font: font, .foregroundColor: UIColor.white], for: .selected)
//        
    }
}

#Preview {
    SegmentedControls()
}
