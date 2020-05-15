//
//  Created by Tomasz Załoga on 15/05/2020.
//

import Foundation
import CVDomain

class CVExperienceViewModel {
    
    // MARK: - Properties
    
    private let experience: Experience
    private let rangeDateFormatter: RangeDateFormatter = RangeDateFormatter()
    
    // MARK: - Lifecycle
    
    init(experience: Experience) {
        self.experience = experience
    }
    
    // MARK: - Output
    
    var title: String {
        "\(experience.role.value) at \(experience.company.value)"
    }
    
    var summary: String? {
        experience.summary
    }
    
    var date: String {
        rangeDateFormatter.string(
            from: experience.dateRange.startDate,
            to: experience.dateRange.endDate)
    }
}
