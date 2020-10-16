//
//  Created by Tomasz Załoga on 09/10/2020.
//

import SwiftUI

struct ContainerView<Content: View>: View {
    private let content: Content
    
    init(_ content: Content) {
        self.content = content
    }
    
    init(@ViewBuilder _ contentProvider: @escaping () -> Content) {
        self.content = contentProvider()
    }
    
    var body: some View {
        ZStack {
            content
        }
        .padding(.standard)
    }
}
