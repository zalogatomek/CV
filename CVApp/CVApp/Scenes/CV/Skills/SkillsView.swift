//
//  Created by Tomasz Załoga on 10/10/2020.
//

import SwiftUI
import CVDomain

struct CVSkillsView: View {
    let viewModel: CVSkillsViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: .small) {
            Text(viewModel.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.paragraphBold)
            
            if let description = viewModel.description {
                Text(description)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.paragraph)
            }
        }
    }
}

struct CVSkillsView_Previews: PreviewProvider {
    static var previews: some View {
        CVSkillsView(viewModel: previewViewModel)
            .frame(width: 300.0, height: nil)
            .previewLayout(.sizeThatFits)
    }
    
    private static var previewViewModel: CVSkillsViewModel {
        let skill = DependencyPreviewContainer.createCV().skills.first!
        return CVSkillsViewModel(skills: [skill])
    }
}
