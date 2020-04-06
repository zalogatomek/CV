//
//  Created by Tomasz Załoga on 06/04/2020.
//

import SwiftUI
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
    
    var date: String {
        rangeDateFormatter.string(
            from: experience.dateRange.startDate,
            to: experience.dateRange.endDate)
    }
}

struct CVExperienceView: View {
    let viewModel: CVExperienceViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Text(viewModel.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            
            Text(viewModel.date)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.body)
                .foregroundColor(.gray)
        }
    }
}

struct CVExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        CVExperienceView(viewModel: DependencyPreviewContainer.createCvViewModel().experience.first!)
            .frame(width: 300.0, height: nil)
            .previewLayout(.sizeThatFits)
    }
}
