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
    
    // MARK: - View
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                topView(parentGeometry: geometry)
                LazyVStack(spacing: .standard) {
                    ForEach(viewModel.items) { item -> AnyView in
                        switch item {
                        case .header(let title):
                            return header(with: title)
                        case .summary(let viewModel):
                            return summaryView(with: viewModel, geometry: geometry)
                        case .experience(let viewModel):
                            return experienceView(with: viewModel)
                        case .education(let viewModel):
                            return educationView(with: viewModel)
                        case .skills(let viewModel):
                            return skillsView(with: viewModel)
                        case .contact(let viewModel):
                            return contactView(with: viewModel)
                        }
                    }
                }
                .padding(.bottom, geometry.safeAreaInsets.bottom + .standard)
            }
            .background(Color(white: 0.95))
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    // MARK: - Subviews
    
    private func topView(parentGeometry: GeometryProxy) -> some View {
        GeometryReader { geometry in
            let scrollOffset = geometry.frame(in: .global).minY
            let height = topViewHeight(safeAreaInset: parentGeometry.safeAreaInsets.top,
                                       scrollOffset: scrollOffset)
            let offset = topViewOffset(scrollOffset: scrollOffset)
            Color.accentPrimary
                .frame(width: nil, height: height)
                .offset(offset)
        }
        .frame(width: nil, height: parentGeometry.safeAreaInsets.top)
    }
    
    private func topViewHeight(safeAreaInset: CGFloat, scrollOffset: CGFloat) -> CGFloat {
        let offset = scrollOffset >= 0.0 ? scrollOffset : 0.0
        return safeAreaInset + .standard + offset
    }
    
    private func topViewOffset(scrollOffset: CGFloat) -> CGSize {
        guard scrollOffset >= 0.0 else { return .zero }
        return CGSize(width: 0.0, height: -scrollOffset)
    }
    
    private func header(with title: String) -> AnyView {
        let header = SectionHeader(title)
            .padding(.horizontal, .standard)
            .padding(.top, .small)
        
        return AnyView(header)
    }
    
    private func summaryView(
        with viewModel: CVSummaryViewModel,
        geometry: GeometryProxy
    ) -> AnyView {
        let summaryView = CVSummaryView(viewModel: viewModel)
        let containerView = ContainerView(summaryView)
            .padding(.top, -.standard)
            .background(Color.accentPrimary)

        return AnyView(containerView)
    }
    
    private func experienceView(with viewModel: CVExperienceViewModel) -> AnyView {
        let experienceView = CVExperienceView(viewModel: viewModel)
        let cardView = CardView(experienceView)
            .padding(.horizontal, .standard)
            
        return AnyView(cardView)
    }
    
    private func educationView(with viewModel: CVEducationViewModel) -> AnyView {
        let educationView = CVEducationView(viewModel: viewModel)
        let cardView = CardView(educationView)
            .padding(.horizontal, .standard)
            
        return AnyView(cardView)
    }
    
    private func skillsView(with viewModel: CVSkillsViewModel) -> AnyView {
        let skillsView = CVSkillsView(viewModel: viewModel)
        let cardView = CardView(skillsView)
            .padding(.horizontal, .standard)
            
        return AnyView(cardView)
    }
    
    private func contactView(with viewModel: CVContactViewModel) -> AnyView {
        let contactView = CVContactView(viewModel: viewModel)
            .padding(.horizontal, .standard)
            
        return AnyView(contactView)
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        return CVView(viewModel: DependencyPreviewContainer.createCvViewModel())
    }
}
