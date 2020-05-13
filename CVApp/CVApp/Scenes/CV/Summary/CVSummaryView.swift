//
//  Created by Tomasz Załoga on 04/04/2020.
//

import SwiftUI
import CVDomain

struct CVSummaryView: View {
    let viewModel: CVSummaryViewModel
    
    var body: some View {
        VStack(spacing: .small) {
            HStack(alignment: .top) {
                IfLet(viewModel.imageName) { imageName in
                    CircleImage(imageName)
                        .frame(width: 60.0, height: 60.0)
                }
                
                Text(viewModel.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
            }
            
            Text(viewModel.summary ?? "")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.body)
                .foregroundColor(.gray)
        }
    }
}

struct CVSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        CVSummaryView(viewModel: DependencyPreviewContainer.createCvViewModel().header!)
            .frame(width: 300.0, height: nil)
            .previewLayout(.sizeThatFits)
    }
}
