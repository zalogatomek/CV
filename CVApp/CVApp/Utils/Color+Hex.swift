//
//  Created by Tomasz Załoga on 13/05/2020.
//

import SwiftUI

extension Color {
    
    init(red: Int, green: Int, blue: Int) {
        self.init(red: Double(red) / 255.0,
                  green: Double(green) / 255.0,
                  blue: Double(blue) / 255.0)
    }
    
    init(hex: Int) {
        self.init(red: (hex >> 16) & 0xFF,
                  green: (hex >> 8) & 0xFF,
                  blue: hex & 0xFF)
    }
}
