//
//  Created by Tomasz Załoga on 21/03/2020.
//  

import SwiftUI
import CVDomain

struct CVView: View {
    let viewModel: CVViewModel
    
    var body: some View {
        VStack(spacing: 16.0) {
            CVHeaderView(viewModel: viewModel.header!)
            ForEach(viewModel.experience, id: \.title) { viewModel in
                CVExperienceView(viewModel: viewModel)
            }
            Spacer()
        }
        .padding()
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        return CVView(viewModel: DependencyPreviewContainer.createCvViewModel())
    }
}
