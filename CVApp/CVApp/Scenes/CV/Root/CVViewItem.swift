//
//  Created by Tomasz Załoga on 07/10/2020.
//

import Foundation

enum CVViewItem: Identifiable {
    case header(title: String)
    case summary(viewModel: CVSummaryViewModel)
    case experience(viewModel: CVExperienceViewModel)
    
    var id: String {
        switch self {
        case .header(let title): return "header_\(title)"
        case .summary: return "summary"
        case .experience(let viewModel): return "experience_\(viewModel.title)"
        }
    }
}
