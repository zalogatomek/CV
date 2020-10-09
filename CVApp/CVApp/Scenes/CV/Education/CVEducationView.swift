//
//  Created by Tomasz Załoga on 09/10/2020.
//

import SwiftUI
import CVDomain

struct CVEducationView: View {
    let viewModel: CVEducationViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: .small) {
            Text(viewModel.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.paragraphBold)
        
            if let subtitle = viewModel.subtitle {
                Text(subtitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.paragraphBold)
            }
            
            if let summary = viewModel.summary {
                Text(summary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.paragraph)
            }
            
            Text(viewModel.date)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.paragraph)
                .foregroundColor(.textSecondary)
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
