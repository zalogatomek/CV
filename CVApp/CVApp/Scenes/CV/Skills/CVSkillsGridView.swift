//
//  Created by Tomasz Załoga on 29/01/2021.
//

import SwiftUI
import CVDomain

struct CVSkillsGridView: View {
    
    // MARK: - Properties
    
    let viewModel: CVSkillsGridViewModel
    @Environment(\.horizontalSizeClass) var sizeClass
    var columns: [GridItem] {
        if sizeClass == .regular {
            return [
                GridItem(.flexible(), spacing: .standard),
                GridItem(.flexible(), spacing: .standard)
            ]
        } else {
            return [
                GridItem(.flexible())
            ]
        }
    }
    
    // MARK: - View
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: .standard, content: {
            ForEach(viewModel.items, id: \.title) { item in
                let skillsView = CVSkillsView(viewModel: item)
                CardView(skillsView)
            }
        })
    }
}
