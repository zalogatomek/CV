//
//  Created by Tomasz Załoga on 27/11/2020.
//

import SwiftUI

struct SafeAreaPreferenceKey: PreferenceKey {
    static let defaultValue: EdgeInsets = EdgeInsets(horizontal: 0.0, vertical: 0.0)

    static func reduce(value: inout EdgeInsets, nextValue: () -> EdgeInsets) {
        value = nextValue()
    }
}

extension View {
    func readSafeArea(to safeArea: Binding<EdgeInsets>) -> some View {
        background(GeometryReader { geometry in
            Color.clear.preference(
                key: SafeAreaPreferenceKey.self,
                value: geometry.safeAreaInsets
            )
        })
        .onPreferenceChange(SafeAreaPreferenceKey.self) {
            if safeArea.wrappedValue != $0 {
                safeArea.wrappedValue = $0
            }
        }
    }
}
