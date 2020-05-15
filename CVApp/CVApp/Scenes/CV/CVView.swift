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
        Form {
            CVSummaryView(viewModel: viewModel.header!)
                .listRowBackground(Color.accentPrimary)
            
            Section(header: sectionHeader("WORK EXPERIENCE")) {
                ForEach(viewModel.experience, id: \.title) { viewModel in
                    CVExperienceView(viewModel: viewModel)
                }
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
