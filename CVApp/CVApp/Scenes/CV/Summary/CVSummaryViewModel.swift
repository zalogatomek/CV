//
//  Created by Tomasz Załoga on 05/04/2020.
//

import Foundation
import CVDomain

struct CVSummaryViewData {
    let name: String
    let summary: String?
    let imageName: String?
}

func createSummary(with userData: UserData) -> CVSummaryViewData {
    return CVSummaryViewData(
        name: "\(userData.firstName) \(userData.lastName)",
        summary: userData.summary,
        imageName: summaryImageName(with: userData)
    )
}

func summaryImageName(with userData: UserData) -> String? {
    guard case .asset(let name) = userData.photo ?? userData.avatar else { return nil }
    return name
}

final class CVSummaryViewModel {
    
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
