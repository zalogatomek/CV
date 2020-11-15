//
//  Created by Tomasz Załoga on 06/11/2020.
//

import SwiftUI

extension View {
    @ViewBuilder func hidden(_ isHidden: Bool) -> some View {
        if isHidden {
            hidden()
        } else {
            self
        }
    }
}
