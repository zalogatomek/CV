//
//  Created by Tomasz Załoga on 05/04/2020.
//

import SwiftUI

struct CircleImage: View {
    
    // MARK: - Properties
    
    private let name: String
    
    // MARK: - Lifecycle
    
    init(_ name: String) {
        self.name = name
    }
    
    // MARK: - View
    
    var body: some View {
        GeometryReader { geometry in
            Image(self.name)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: self.imageSize(geometry), height: self.imageSize(geometry))
                .cornerRadius(self.imageSize(geometry))
        }
    }
    
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
