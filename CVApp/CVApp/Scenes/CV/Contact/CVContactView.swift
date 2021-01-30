//
//  Created by Tomasz Załoga on 10/10/2020.
//

import SwiftUI
import CVDomain

struct CVContactView: View {
    
    // MARK: - Configuration
    
    private let buttonSize: CGFloat = 50.0
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

    
    // MARK: - Properties
    
    let viewModel: CVContactViewModel
    
    // MARK: - View
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: .standard) {
            ForEach(viewModel.items) { item in
                HStack(spacing: .small, content: {
                    Link(destination: item.url, label: {
                        CircleImage(item.imageName)
                            .accent(.light, background: .accentSecondary, padding: .small)
                            .frame(width: buttonSize, height: buttonSize, alignment: .center)
                    })
                    Text(item.displayableUrl)
                        .textStyle(.paragraph)
                    
                })
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct CVContactView_Previews: PreviewProvider {
    static var previews: some View {
        CVContactView(viewModel: previewViewModel)
            .frame(width: 400.0, height: 300.0)
            .previewLayout(.sizeThatFits)
    }
    
    private static var previewViewModel: CVContactViewModel {
        let contacts = DependencyPreviewContainer.createCV().userData.contacts
        return CVContactViewModel(contacts: contacts)
    }
}
