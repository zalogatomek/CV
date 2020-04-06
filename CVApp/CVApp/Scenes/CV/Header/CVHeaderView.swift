//
//  Created by Tomasz Załoga on 04/04/2020.
//

import SwiftUI
import CVDomain

struct CVHeaderView: View {
    let viewModel: CVHeaderViewModel
    
    var body: some View {
        VStack(spacing: 8.0) {
            HStack(alignment: .top) {
                if viewModel.imageName != nil {
                    CircleImage(viewModel.imageName!)
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

struct CVHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CVHeaderView(viewModel: DependencyPreviewContainer.createCvViewModel().header!)
            .frame(width: 300.0, height: nil)
            .previewLayout(.sizeThatFits)
    }
}
