//
//  Created by Tomasz Załoga on 29/01/2021.
//

import Foundation
import CVDomain

final class CVSkillsGridViewModel {
    
    // MARK: - Properties
    
    let items: [CVSkillsViewModel]
    
    // MARK: - Lifecycle
    
    init(items: [CVSkillsViewModel]) {
        self.items = items
    }
}
