//
//  Created by Tomasz Załoga on 21/03/2020.
//  

import SwiftUI
import CVDomain

struct CVView: View {
    
    // MARK: - Properties
    
    let viewModel: CVViewModel
    
    // MARK: - Lifecycle
    
    init(viewModel: CVViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: .wide) {
                ForEach(viewModel.items) { item -> AnyView in
                    switch item {
                    case .header(let title):
                        return AnyView(SectionHeader(title))
                    case .summary(let viewModel):
                        return AnyView(CVSummaryView(viewModel: viewModel))
                    case .education(viewModel: let viewModel):
                        return AnyView(CardView(CVEducationView(viewModel: viewModel)))
                    case .experience(let viewModel):
                        return AnyView(CardView(CVExperienceView(viewModel: viewModel)))

                    }
                }
            }
            .padding(.wide)
        }
        .background(Color.init(white: 0.95))
        .edgesIgnoringSafeArea(.horizontal)
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        return CVView(viewModel: DependencyPreviewContainer.createCvViewModel())
    }
}
