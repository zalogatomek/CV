//
//  Created by Tomasz Załoga on 10/10/2020.
//

import Foundation
import CVDomain

extension Skill.Kind {
    var displayName: String {
        switch self {
        case .programmingLanguage:
            return "PROGRAMMING_LANGUAGES".localized
        case .framework:
            return "FRAMEWORKS".localized
        case .tool:
            return "TOOLS".localized
        case .metodology:
            return "METHODOLOGY".localized
        case .softSkill:
            return "SOFT_SKILLS".localized
        case .language:
            return "LANGUAGES".localized
        }
    }
}
