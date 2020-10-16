//
//  Created by Tomasz Załoga on 07/10/2020.
//

import SwiftUI

struct CardView<Content: View>: View {
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
        .background(Color.white)
        .cornerRadius(.standard)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView {
            Text("I'm a Text\nand I'm inside card view")
        }
        .frame(width: 200, height: 200)
        .background(Color.gray)
        .previewLayout(.fixed(width: 200, height: 200))
    }
}
