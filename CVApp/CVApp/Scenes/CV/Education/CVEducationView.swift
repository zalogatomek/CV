//
//  Created by Tomasz Załoga on 09/10/2020.
//

import SwiftUI
import CVDomain

struct CVEducationView: View {
    
    // MARK: - Properties
    
    let viewModel: CVEducationViewModel
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .leading, spacing: .small) {
            Text(viewModel.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.paragraphBold)
                .textStyle(.paragraphBold)
        
            if let subtitle = viewModel.subtitle {
                Text(subtitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .textStyle(.paragraphBold)
            }
            
            if let summary = viewModel.summary {
                Text(summary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .textStyle(.paragraph)
            }
            
            Text(viewModel.date)
                .frame(maxWidth: .infinity, alignment: .leading)
                .textStyle(.paragraph, .secondary)
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
