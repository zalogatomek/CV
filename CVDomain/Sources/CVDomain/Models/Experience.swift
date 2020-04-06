//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct Experience {
    public struct Responsibility: Value {
        public let value: String
        
        public init?(_ value: String?) {
            guard let value = value else { return nil }
            self.value = value
        }
    }
    
    public let role: Name
    public let company: Name
    public let dateRange: DateRange
    public let responsibilities: [Responsibility]
    
    public init?(role: Name?,
                 dateRange: DateRange?,
                 company: Name?,
                 responsibilities: [Responsibility]?)
    {
        guard let role = role,
            let dateRange = dateRange,
            let company = company
        else { return nil }
        
        self.role = role
        self.dateRange = dateRange
        self.company = company
        self.responsibilities = responsibilities ?? []
    }
}
