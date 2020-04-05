//
//  Created by Tomasz Załoga on 05/04/2020.
//

import Foundation
import CVDomain

struct CVHeaderViewModel {
    
    // MARK: - Properties
    
    private let userData: UserData
    
    // MARK: - Lifecycle
    
    init(userData: UserData) {
        self.userData = userData
    }
    
    // MARK: - Output
    
    var name: String { "\(userData.firstName) \(userData.lastName)" }
    var summary: String? { userData.summary }
    var imageName: String? {
        guard case .asset(let name) = userData.photo ?? userData.avatar else { return nil }
        return name
    }
}
