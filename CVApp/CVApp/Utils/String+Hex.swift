//
//  Created by Tomasz Załoga on 13/05/2020.
//

import Foundation

extension String {
    var hex: Int { Int(self.filter{ $0.isHexDigit }, radix: 16) ?? 0 }
}
