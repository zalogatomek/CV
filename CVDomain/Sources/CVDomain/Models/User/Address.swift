//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct Address {
    public let street: String
    public let postCode: String
    public let city: String
    
    public init?(street: String?, postCode: String?, city: String?) {
        guard let street = street,
            let postCode = postCode,
            let city = city
        else { return nil }
        
        self.street = street
        self.postCode = postCode
        self.city = city
    }
}
