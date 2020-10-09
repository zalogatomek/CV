//
//  Created by Tomasz Załoga on 09/10/2020.
//

import Foundation
import CVDomain

final class CVEducationViewModel {
    
    // MARK: - Properties
    
    private let education: Education
    private let rangeDateFormatter: RangeDateFormatter = RangeDateFormatter()
    
    // MARK: - Lifecycle
    
    init(education: Education) {
        self.education = education
    }
    
    // MARK: - Output
    
    var title: String { education.schoolName.value }
    var subtitle: String? { education.degree?.value }
    var summary: String? { education.summary }
    
    var date: String {
        rangeDateFormatter.string(
            from: education.dateRange.startDate,
            to: education.dateRange.endDate
        )
    }
}
