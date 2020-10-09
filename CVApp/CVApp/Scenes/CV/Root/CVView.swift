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
        GeometryReader { geometry in
            ScrollView {
                LazyVStack(spacing: .wide) {
                    ForEach(viewModel.items) { item -> AnyView in
                        switch item {
                        case .header(let title):
                            return header(with: title)
                        case .summary(let viewModel):
                            return summaryView(with: viewModel, geometry: geometry)
                        case .education(let viewModel):
                            return educationView(with: viewModel)
                        case .experience(let viewModel):
                            return experienceView(with: viewModel)
                        }
                    }
                }
                .padding(.bottom, geometry.safeAreaInsets.bottom + .wide)
            }
            .background(Color(white: 0.95))
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    // MARK: - Subviews
    
    private func header(with title: String) -> AnyView {
        let header = SectionHeader(title)
            .padding(.horizontal, .wide)
        
        return AnyView(header)
    }
    
    private func summaryView(
        with viewModel: CVSummaryViewModel,
        geometry: GeometryProxy
    ) -> AnyView {
        let summaryView = CVSummaryView(viewModel: viewModel)
            .padding(.top, geometry.safeAreaInsets.top)
        let containerView = ContainerView(summaryView)
            .background(Color.accentPrimary)
            
        return AnyView(containerView)
    }
    
    private func educationView(with viewModel: CVEducationViewModel) -> AnyView {
        let educationView = CVEducationView(viewModel: viewModel)
        let cardView = CardView(educationView)
            .padding(.horizontal, .wide)
            
        return AnyView(cardView)
    }
    
    private func experienceView(with viewModel: CVExperienceViewModel) -> AnyView {
        let experienceView = CVExperienceView(viewModel: viewModel)
        let cardView = CardView(experienceView)
            .padding(.horizontal, .wide)
            
        return AnyView(cardView)
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        return CVView(viewModel: DependencyPreviewContainer.createCvViewModel())
    }
}
