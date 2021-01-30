//
//  Created by Tomasz Załoga on 13/05/2020.
//

import SwiftUI

extension CGFloat {
    
    private static var spacingMultipier: CGFloat {
        let horizontalSizeClass = UIApplication.shared.windows.first?.rootViewController?.traitCollection.horizontalSizeClass
        return horizontalSizeClass == .regular ? 1.5 : 1.0
    }
    
    // MARK: - Spacing values
    
    static var small: CGFloat { 8.0 * spacingMultipier }
    static var standard: CGFloat { 16.0 * spacingMultipier }
    static var wide: CGFloat { 32.0 * spacingMultipier }
}
