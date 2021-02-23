//
//  Created by Tomasz Załoga on 10/10/2020.
//

import Foundation

struct CVContactViewData: Identifiable {
    let imageName: String
    let url: URL
    let displayableUrl: String
    
    // MARK: - Identifiable
    
    var id: String { imageName }
}
