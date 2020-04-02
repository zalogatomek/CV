//
//  Created by Tomasz Załoga on 02/04/2020.
//

import Foundation

public final class ExperienceBuilder {
    
    // MARK: - Properties
    
    private var startDate: Date?
    private var endDate: Date?
    private var companyName: String?
    private var responsibilities: [String] = []
    
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
    
    public func set(companyName: String?) -> Self {
        self.companyName = companyName
        return self
    }
    
    public func add(responsibility: String?) -> Self {
        if let responsibility = responsibility {
            self.responsibilities.append(responsibility)
        }
        return self
    }
    
    public func build() -> Experience? {
        let responsibilities = self.responsibilities.compactMap {
            Experience.Responsibility($0)
        }
        return Experience(
            dateRange: DateRange(
                startDate: startDate,
                endDate: endDate),
            companyName: Name(companyName),
            responsibilities: responsibilities)
    }
}
