//
//  Created by Tomasz Załoga on 21/03/2020.
//  

import SwiftUI
import CVDomain

struct CVView: View {
    let viewModel: CVViewModel
    
    var body: some View {
        Form {
            ZStack {
                Color.accentSecondary.edgesIgnoringSafeArea(.all)
                CVSummaryView(viewModel: viewModel.header!)
            }
            
            Section(header: Text("WORK EXPERIENCE")) {
                ForEach(viewModel.experience, id: \.title) { viewModel in
                    CVExperienceView(viewModel: viewModel)
                }
            }
        }
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        return CVView(viewModel: DependencyPreviewContainer.createCvViewModel())
    }
}
