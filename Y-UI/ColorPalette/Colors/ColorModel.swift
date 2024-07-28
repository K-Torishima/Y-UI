//  Copyright © Koji Torishima All Rights Reserved.

import Foundation
import DeveloperToolsSupport

struct ColorModel: Sendable, Identifiable {
    let id: UUID
    let color: ColorResource
    let name: String
    // let colorHex: String
    
    init(color: ColorResource, name: String) {
        id = UUID()
        self.color = color
        self.name = name
    }
}
