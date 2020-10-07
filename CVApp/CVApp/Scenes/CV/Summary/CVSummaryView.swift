//
//  Created by Tomasz Załoga on 04/04/2020.
//

import SwiftUI
import CVDomain

struct CVSummaryView: View {
    let viewModel: CVSummaryViewModel
    
    var body: some View {
        VStack(spacing: .wide) {
            IfLet(viewModel.imageName) { imageName in
                CircleImage(imageName)
                    .frame(width: 120.0, height: 120.0)
            }
            
            Text(viewModel.name.uppercased())
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.header)
                .foregroundColor(.textLight)
            
            Text(viewModel.summary ?? "")
                .frame(maxWidth: .infinity, alignment: .center)
                .multilineTextAlignment(.center)
                .font(.paragraph)
                .foregroundColor(.textLight)
        }
        .background(Color.accentPrimary)
    }
}

struct CVSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        CVSummaryView(viewModel: previewViewModel)
            .frame(width: 300.0, height: nil)
            .previewLayout(.sizeThatFits)
    }
    
    private static var previewViewModel: CVSummaryViewModel {
        let userData = DependencyPreviewContainer.createCV().userData
        return CVSummaryViewModel(userData: userData)
    }
}
