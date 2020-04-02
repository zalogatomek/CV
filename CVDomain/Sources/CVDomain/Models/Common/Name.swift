//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct Name: Value {
    public let value: String
    
    public init?(_ value: String?) {
        guard let value = value else { return nil }
        self.value = value
    }
}
