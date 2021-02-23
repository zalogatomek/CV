//
//  Created by Tomasz Załoga on 10/10/2020.
//

import Foundation
import CVDomain

final class CVContactViewModel {
        
    // MARK: - Properties
    
    private let contacts: [UserData.Contact]
    
    // MARK: - Lifecycle
    
    init(contacts: [UserData.Contact]) {
        self.contacts = contacts
    }
    
    // MARK: - Output
    
    var items: [CVContactViewData] {
        CVContactViewDataFactory.create(with: contacts)
    }
}
