//
//  Created by Tomasz Załoga on 06/11/2020.
//

import SwiftUI

struct ScrollViewContentOffsetReader: View {
    
    // MARK: - Properties
    
    private let contentOffset: Binding<CGFloat>
    
    // MARK: - Lifecycle
    
    init(_ contentOffset: Binding<CGFloat>) {
        self.contentOffset = contentOffset
    }
    
    // MARK: - View
    
    var body: some View {
        GeometryReader { geometry -> Color in
            contentOffset.wrappedValue = geometry.frame(in: .global).minY
            return Color.clear
        }
        .frame(width: 0.0, height: 0.0)
    }
}
