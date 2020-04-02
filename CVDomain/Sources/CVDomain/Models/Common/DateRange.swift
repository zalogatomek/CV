//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct DateRange {
    public let startDate: Date
    public let endDate: Date?
    
    public init?(startDate: Date?, endDate: Date?) {
        guard let startDate = startDate else { return nil }
        
        self.startDate = startDate
        self.endDate = endDate
    }
}
