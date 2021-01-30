//
//  Created by Tomasz Załoga on 07/10/2020.
//

import Foundation

enum CVViewItem: Identifiable {
    case header(title: String)
    case summary(viewModel: CVSummaryViewModel)
    case experience(viewModel: CVExperienceViewModel)
    case education(viewModel: CVEducationViewModel)
    case skills(viewModel: CVSkillsGridViewModel)
    case contact(viewModel: CVContactViewModel)
    
    var id: String {
        switch self {
        case .header(let title):
            return "header_\(title)"
        case .summary:
            return "summary"
        case .experience(let viewModel):
            return "experience_\(viewModel.title)"
        case .education(let viewModel):
            return "education_\(viewModel.title)"
        case .skills(let viewModel):
            return "skills_\(viewModel.items.map { $0.title })"
        case .contact:
            return "contact"
        }
    }
}
