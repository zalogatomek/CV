//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public enum Photo {
    case path(url: URL)
    case asset(named: String)
}
