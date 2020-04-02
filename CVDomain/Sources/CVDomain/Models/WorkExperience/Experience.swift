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
    
    public let dateRange: DateRange
    public let companyName: Name
    public let responsibilities: [Responsibility]
    
    public init?(dateRange: DateRange?,
                 companyName: Name?,
                 responsibilities: [Responsibility]?)
    {
        guard let dateRange = dateRange,
            let companyName = companyName
        else { return nil }
        
        self.dateRange = dateRange
        self.companyName = companyName
        self.responsibilities = responsibilities ?? []
    }
}
