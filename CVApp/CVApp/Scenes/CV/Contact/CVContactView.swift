//
//  Created by Tomasz Załoga on 10/10/2020.
//

import SwiftUI
import CVDomain

struct CVContactView: View {
    
    // MARK: - Constants
    
    private let buttonSize: CGFloat = 50.0
    
    // MARK: - Properties
    
    let viewModel: CVContactViewModel
    
    // MARK: - View
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            ForEach(viewModel.items) { item in
                CircleButton(item.imageName,
                             action: item.action)
                    .accent(.light, background: .accentPrimary)
                    .frame(width: buttonSize, height: buttonSize, alignment: .center)
                Spacer()
            }
        }
    }
}

struct CVContactView_Previews: PreviewProvider {
    static var previews: some View {
        CVContactView(viewModel: previewViewModel)
            .frame(width: 300.0, height: 50.0)
            .previewLayout(.sizeThatFits)
    }
    
    private static var previewViewModel: CVContactViewModel {
        let contacts = DependencyPreviewContainer.createCV().userData.contacts
        return CVContactViewModel(contacts: contacts)
    }
}
