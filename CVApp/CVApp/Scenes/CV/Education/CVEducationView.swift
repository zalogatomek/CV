//
//  Created by Tomasz Załoga on 09/10/2020.
//

import SwiftUI
import CVDomain

struct CVEducationView: View {
    
    // MARK: - Properties
    
    let viewModel: CVEducationViewModel

    @Environment(\.horizontalSizeClass) var sizeClass
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .leading, spacing: .small) {
            HStack(spacing: .small) {
                Text(viewModel.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.paragraphBold)
                    .textStyle(.paragraphBold)

                Spacer(minLength: 0.0)

                if sizeClass == .regular {
                    Text(viewModel.date)
                        .frame(alignment: .trailing)
                        .textStyle(.paragraph, .secondary)
                }
            }

            HStack(spacing: .small) {
                if let subtitle = viewModel.subtitle {
                    Text(subtitle)
                        .frame(alignment: .leading)
                        .textStyle(.paragraphBold)
                }

                if let summary = viewModel.summary {
                    Text(summary)
                        .frame(alignment: .leading)
                        .textStyle(.paragraph)
                }

                Spacer()
            }

            if sizeClass != .regular {
                Text(viewModel.date)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .textStyle(.paragraph, .secondary)
            }
        }
    }
}

struct CVEducationView_Previews: PreviewProvider {
    static var previews: some View {
        CVEducationView(viewModel: previewViewModel)
            .frame(width: 300.0, height: nil)
            .previewLayout(.sizeThatFits)
    }
    
    private static var previewViewModel: CVEducationViewModel {
        let education = DependencyPreviewContainer.createCV().education.first!
        return CVEducationViewModel(education: education)
    }
}
