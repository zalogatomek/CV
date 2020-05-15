//
//  Created by Tomasz Załoga on 15/05/2020.
//

import SwiftUI

struct SectionHeader: View {
    
    // MARK: - Properties
    
    private let text: String
    
    // MARK: - Lifecycle
    
    init(_ text: String) {
        self.text = text
    }
    
    // MARK: - View
    
    var body: some View {
        Text(text)
            .multilineTextAlignment(.center)
            .font(.paragraphBold)
            .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct SectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeader("SECTION HEADER")
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
