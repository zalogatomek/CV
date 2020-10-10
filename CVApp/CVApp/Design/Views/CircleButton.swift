//
//  Created by Tomasz Załoga on 10/10/2020.
//

import SwiftUI

struct CircleButton: View {
    
    // MARK: - Properties
    
    private let name: String
    private let action: () -> Void
    private var backgroundColor: Color = .clear
    
    // MARK: - Lifecycle
    
    init(_ name: String, action: @escaping () -> Void) {
        self.name = name
        self.action = action
    }
    
    private init(_ name: String, action: @escaping () -> Void, backgroundColor: Color) {
        self.name = name
        self.action = action
        self.backgroundColor = backgroundColor
    }
    
    // MARK: - View
    
    var body: some View {
        Button(action: action, label: {
            GeometryReader { geometry in
                ZStack {
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: imageSize(geometry),
                               height: imageSize(geometry),
                               alignment: .center)
                        .padding(imagePadding(geometry))
                }
                .frame(alignment: .center)
                .background(backgroundColor)
                .cornerRadius(cornerRadius(geometry))
            }
        })
    }
    
    // MARK: - Customization
    
    func accent(_ color: Color, background backgroundColor: Color) -> some View {
        return CircleButton(name, action: action, backgroundColor: backgroundColor)
            .accentColor(color)
    }
    
    // MARK: - Utils
    
    private func imageSize(_ geometry: GeometryProxy) -> CGFloat {
        return min(geometry.size.width * 3.0 / 5.0,
                   geometry.size.height * 3.0 / 5.0)
    }
    
    private func imagePadding(_ geometry: GeometryProxy) -> CGFloat {
        return min(geometry.size.width * 1.0 / 5.0,
                   geometry.size.height * 1.0 / 5.0)
    }
    
    private func cornerRadius(_ geometry: GeometryProxy) -> CGFloat {
        return min(geometry.size.width / 2.0,
                   geometry.size.height / 2.0)
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton("Email", action: { })
            .accent(.light, background: .accentPrimary)
            .previewLayout(.fixed(width: 50, height: 50))
    }
}
