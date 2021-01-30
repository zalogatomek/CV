//
//  Created by Tomasz Załoga on 10/10/2020.
//

import SwiftUI
import CVDomain

struct CVContactView: View {
    
    // MARK: - Configuration
    
    private let buttonSize: CGFloat = 50.0
    private let buttonPadding: CGFloat = 10.0
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
        LazyVGrid(columns: columns, spacing: .small) {
            ForEach(viewModel.items) { item in
                HStack(spacing: .small, content: {
                    Link(destination: item.url, label: {
                        CircleImage(item.imageName)
                            .accent(.light, background: .accentSecondary, padding: buttonPadding)
                            .frame(width: buttonSize, height: buttonSize, alignment: .center)
                    })
                    // TODO: Temporary solution to make text selectable in PDF
                    //Text(item.displayableUrl)
                    PDFDrawableText(item.displayableUrl)
                        .textStyle(.paragraph)
                    
                })
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, .standard)
            }
        }
    }
}

final class PDFDrawableLabel: UILabel {
    override func draw(_ layer: CALayer, in ctx: CGContext) {
        let isPDF = !UIGraphicsGetPDFContextBounds().isEmpty
        if (!layer.shouldRasterize && isPDF) {
            draw(bounds)
        } else {
            super.draw(layer, in: ctx)
        }
    }
}


struct PDFDrawableText: UIViewRepresentable {
    let text: String
     
    init(_ text: String) {
        self.text = text
    }

    func makeUIView(context: Context) -> UILabel {
        return PDFDrawableLabel()
    }
    
    func updateUIView(_ label: UILabel, context: Context) {
        label.text = text
        label.font = UIFont(name: "Montserrat", size: 16.0)
        label.textColor = UIColor(Color.textPrimary)
        label.numberOfLines = 0
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
