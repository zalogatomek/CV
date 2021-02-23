//
//  Created by Tomasz Załoga on 15/05/2020.
//

import Foundation
import CVDomain

struct CVExperienceViewData {
    let title: String
    let summary: String?
    let date: String
}

func createExperience(with experience: Experience) -> CVExperienceViewData {
    let title = "\(experience.role.value) \("AT".localized) \(experience.company.value)"
    let date = RangeDateFormatter().string(
        from: experience.dateRange.startDate,
        to: experience.dateRange.endDate
    )
    return CVExperienceViewData(
        title: title,
        summary: experience.summary,
        date: date
    )
}

final class CVExperienceViewModel {
    
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
            to: experience.dateRange.endDate
        )
    }
}
