//
//  Created by Tomasz Załoga on 06/04/2020.
//

import SwiftUI
import CVDomain

struct CVExperienceView: View {
    
    // MARK: - Properties
    
    let viewModel: CVExperienceViewModel

    @Environment(\.horizontalSizeClass) var sizeClass
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .leading, spacing: .small) {
            HStack(spacing: .small) {
                Text(viewModel.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .textStyle(.paragraphBold)

                Spacer(minLength: 0.0)

                if sizeClass == .regular {
                    Text(viewModel.date)
                        .frame(alignment: .trailing)
                        .textStyle(.paragraph, .secondary)
                }
            }

            if let summary = viewModel.summary {
                Text(summary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .textStyle(.paragraph)
            }

            if sizeClass != .regular {
                Text(viewModel.date)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .textStyle(.paragraph, .secondary)
            }
        }
    }
}

struct CVExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        CVExperienceView(viewModel: previewViewModel)
            .frame(width: 300.0, height: nil)
            .previewLayout(.sizeThatFits)
    }
    
    private static var previewViewModel: CVExperienceViewModel {
        let experience = DependencyPreviewContainer.createCV().workExperience.first!
        return CVExperienceViewModel(experience: experience)
    }
}
