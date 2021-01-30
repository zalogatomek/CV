//
//  Created by Tomasz Załoga on 05/04/2020.
//

import SwiftUI

struct CircleImage: View {
    
    // MARK: - Properties
    
    private let name: String
    private var backgroundColor: Color = .clear
    private var padding: CGFloat = 0.0
    
    // MARK: - Lifecycle
    
    init(_ name: String) {
        self.name = name
    }
    
    private init(_ name: String, backgroundColor: Color, padding: CGFloat) {
        self.name = name
        self.backgroundColor = backgroundColor
        self.padding = padding
    }
    
    // MARK: - View
    
    var body: some View {
        GeometryReader { geometry in
            Image(self.name)
                .resizable()
                .padding(padding)
                .aspectRatio(contentMode: .fill)
                .frame(width: self.imageSize(geometry), height: self.imageSize(geometry))
                .background(backgroundColor)
                .cornerRadius(self.imageSize(geometry))
            
        }
    }
    
    // MARK: - Customization
    
    func accent(_ color: Color, background backgroundColor: Color, padding: CGFloat = 0.0) -> some View {
        return CircleImage(name, backgroundColor: backgroundColor, padding: padding)
            .accentColor(color)
    }
    
    // MARK: - Helpers
    
    private func imageSize(_ geometry: GeometryProxy) -> CGFloat {
        return min(geometry.size.width, geometry.size.height)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage("Avatar")
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
