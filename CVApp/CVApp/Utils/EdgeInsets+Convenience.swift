//
//  Created by Tomasz Załoga on 16/10/2020.
//

import SwiftUI

extension EdgeInsets {
    init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, leading: horizontal, bottom: vertical, trailing: horizontal)
    }
}
