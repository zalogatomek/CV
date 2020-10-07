//
//  Created by Tomasz Załoga on 07/10/2020.
//

import Foundation
import CVDomain

struct CVViewItemFactory {
    static func create(with cv: CV) -> [CVViewItem] {
        var items: [CVViewItem] = []
        
        items.append(.summary(viewModel: CVSummaryViewModel(userData: cv.userData)))
        items.append(.header(title: "Experience"))
        items.append(contentsOf: cv.workExperience.map {
            .experience(viewModel: CVExperienceViewModel(experience: $0))
        })
        
        return items
    }
}
