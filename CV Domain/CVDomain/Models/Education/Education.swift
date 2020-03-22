//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct Education {
    public struct Degree: Value {
        public let value: String
        
        public init?(_ value: String?) {
            guard let value = value else { return nil }
            self.value = value
        }
    }
    
    public let dateRange: DateRange
    public let schoolName: Name
    public let degree: Degree?
    
    public init?(dateRange: DateRange?,
                 schoolName: Name?,
                 degree: Degree?)
    {
        guard let dateRange = dateRange,
            let schoolName = schoolName
        else { return nil }
        
        self.dateRange = dateRange
        self.schoolName = schoolName
        self.degree = degree
    }
}
