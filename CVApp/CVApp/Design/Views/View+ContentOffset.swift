//
//  Created by Tomasz Załoga on 27/11/2020.
//

import SwiftUI

struct ContentOffsetPreferenceKey: PreferenceKey {
    static let defaultValue: CGPoint = .zero

    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
        value = nextValue()
    }
}

extension View {
    func readContentOffset(to contentOffset: Binding<CGPoint>) -> some View {
        background(GeometryReader { geometry in
            Color.clear.preference(
                key: ContentOffsetPreferenceKey.self,
                value: geometry.frame(in: .global).origin
            )
        })
        .onPreferenceChange(ContentOffsetPreferenceKey.self) {
            contentOffset.wrappedValue = $0
        }
    }
}
