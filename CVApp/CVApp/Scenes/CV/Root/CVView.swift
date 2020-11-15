//
//  Created by Tomasz Załoga on 21/03/2020.
//  

import SwiftUI
import CVDomain

struct CVView: View {
    
    // MARK: - Constants
    
    private let headerVisibleOffset: CGFloat = -120.0
    private let headerTransitionDuration: TimeInterval = 0.3
    
    // MARK: - Properties
    
    let viewModel: CVViewModel
    @State var contentOffset: CGFloat = .zero
    @State var safeArea: EdgeInsets = EdgeInsets()
    
    // MARK: - Lifecycle
    
    init(viewModel: CVViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            SafeAreaReader($safeArea)
            header(with: viewModel.header)
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: .zero) {
                    ScrollViewContentOffsetReader($contentOffset)
                    topView()
                    
                    LazyVStack(spacing: .standard) {
                        ForEach(viewModel.items) { item -> AnyView in
                            switch item {
                            case .header(let title):
                                return sectionHeader(with: title)
                            case .summary(let viewModel):
                                return summaryView(with: viewModel)
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
                    .padding(.bottom, safeArea.bottom + .standard)
                }
            }
            .background(Color(white: 0.95))
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    // MARK: - Subviews
    
    private func topView() -> some View {
        ZStack {
            Color.accentPrimary
                .frame(width: nil, height: topViewHeight)
                .offset(topViewOffset)
        }
        .frame(width: nil, height: safeArea.top, alignment: .top)
    }

    private var topViewHeight: CGFloat {
        let offset = contentOffset >= 0.0 ? contentOffset : 0.0
        return safeArea.top + offset
    }

    private var topViewOffset: CGSize {
        guard contentOffset >= 0.0 else { return .zero }
        return CGSize(width: 0.0, height: -contentOffset)
    }
    
    private func header(with title: String) -> some View {
        VStack {
            ContainerView {
                Text(title.uppercased())
                    .padding(.top, safeArea.top)
                    .textStyle(.paragraphBold, .light)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.accentSecondary)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        .hidden(contentOffset > headerVisibleOffset)
        .transition(AnyTransition.opacity.animation(.easeInOut(duration: headerTransitionDuration)))
        .zIndex(1)
    }
    
    private func sectionHeader(with title: String) -> AnyView {
        let sectionHeader = SectionHeader(title)
            .padding(.horizontal, .standard)
            .padding(.top, .small)
        
        return AnyView(sectionHeader)
    }
    
    private func summaryView(with viewModel: CVSummaryViewModel) -> AnyView {
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
