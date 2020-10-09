//
//  Created by Tomasz Załoga on 07/10/2020.
//

import Foundation

enum CVViewItem: Identifiable {
    case header(title: String)
    case summary(viewModel: CVSummaryViewModel)
    case education(viewModel: CVEducationViewModel)
    case experience(viewModel: CVExperienceViewModel)
    
    var id: String {
        switch self {
        case .header(let title):
            return "header_\(title)"
        case .summary:
            return "summary"
        case .education(let viewModel):
            return "education_\(viewModel.title)"
        case .experience(let viewModel):
            return "experience_\(viewModel.title)"
        }
    }
}
