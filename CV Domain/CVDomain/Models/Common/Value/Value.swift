//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public protocol Value: CustomStringConvertible {
    associatedtype ValueType
    
    var value: ValueType { get }
}

extension Value {
    public var description: String {
        return "\(value)"
    }
}
