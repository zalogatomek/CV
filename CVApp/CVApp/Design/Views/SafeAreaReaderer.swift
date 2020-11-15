//
//  Created by Tomasz Załoga on 06/11/2020.
//

import SwiftUI

struct SafeAreaReader: View {
    
    // MARK: - Properties
    
    private let safeArea: Binding<EdgeInsets>
    
    // MARK: - Lifecycle
    
    init(_ safeArea: Binding<EdgeInsets>) {
        self.safeArea = safeArea
    }
    
    // MARK: - View
    
    var body: some View {
        GeometryReader { geometry -> Color in
            safeArea.wrappedValue = geometry.safeAreaInsets
            return Color.clear
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

