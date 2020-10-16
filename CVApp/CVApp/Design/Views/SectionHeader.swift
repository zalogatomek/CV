//
//  Created by Tomasz Załoga on 15/05/2020.
//

import SwiftUI

struct SectionHeader: View {
    
    // MARK: - Properties
    
    private let text: String
    
    // MARK: - Lifecycle
    
    init(_ text: String) {
        self.text = text.uppercased()
    }
    
    // MARK: - View
    
    var body: some View {
        Text(text)
            .multilineTextAlignment(.center)
            .textStyle(.paragraphBold, .secondary)
            .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct SectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeader("Section header")
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
