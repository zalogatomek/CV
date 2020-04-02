//
//  Created by Tomasz Załoga on 02/04/2020.
//

import Foundation

public final class EducationBuilder {
    
    // MARK: - Properties
    
    private var startDate: Date?
    private var endDate: Date?
    private var schoolName: String?
    private var degree: String?
    
    // MARK: - Lifecycle
    
    public init() { }
    
    // MARK: - Building
    
    public func set(endDate: Date?) -> Self {
        self.endDate = endDate
        return self
    }
    
    public func set(startDate: Date?) -> Self {
        self.startDate = startDate
        return self
    }
    
    public func set(schoolName: String?) -> Self {
        self.schoolName = schoolName
        return self
    }
    
    public func set(degree: String?) -> Self {
        self.degree = degree
        return self
    }
    
    public func build() -> Education? {
        return Education(
            dateRange: DateRange(
                startDate: startDate,
                endDate: endDate),
            schoolName: Name(schoolName),
            degree: Education.Degree(degree))
    }
}
