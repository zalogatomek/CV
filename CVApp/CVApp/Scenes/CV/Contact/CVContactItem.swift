//
//  Created by Tomasz Załoga on 10/10/2020.
//

import Foundation

struct CVContactItem: Identifiable {
    let imageName: String
    let action: () -> Void
    
    // MARK: - Identifiable
    
    var id: String { imageName }
}
