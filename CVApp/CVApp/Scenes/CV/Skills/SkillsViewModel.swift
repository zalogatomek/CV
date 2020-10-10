//
//  Created by Tomasz Załoga on 10/10/2020.
//

import Foundation
import CVDomain

final class CVSkillsViewModel {
    
    // MARK: - Contants
    
    private let commaSeparator: String = ", "
    
    // MARK: - Properties
    
    private let skills: [Skill]
    
    // MARK: - Lifecycle
    
    init(skills: [Skill]) {
        self.skills = skills
    }
    
    // MARK: - Output
    
    var title: String {
        let kinds = skills.map { $0.kind.displayName }
        return Set(kinds).joined(separator: commaSeparator)
    }
    
    var description: String? {
        return skills.map { $0.name.value }.joined(separator: commaSeparator)
    }
}
