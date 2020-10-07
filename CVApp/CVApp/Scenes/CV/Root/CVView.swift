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
        UITableView.appearance().backgroundColor = .clear
    }
    
    // MARK: - Body
    
    var body: some View {
        List(viewModel.items) { item -> AnyView in
            switch item {
            case .header:
                return AnyView(Text("Header"))
            case .summary(let viewModel):
                return AnyView(CVSummaryView(viewModel: viewModel))
            case .experience(let viewModel):
                return AnyView(CVExperienceView(viewModel: viewModel))
            }
        }
        .background(Color.white)
    }
    
    func sectionHeader(_ text: String) -> some View {
        return SectionHeader(text)
            .foregroundColor(Color.accentSecondary)
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        return CVView(viewModel: DependencyPreviewContainer.createCvViewModel())
    }
}
