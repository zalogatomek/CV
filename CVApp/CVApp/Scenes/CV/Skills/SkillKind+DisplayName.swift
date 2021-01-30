//
//  Created by Tomasz Załoga on 10/10/2020.
//

import Foundation
import CVDomain

extension Skill.Kind {
    var displayName: String {
        switch self {
        case .programmingLanguage: return "Programming Languages"
        case .framework: return "Frameworks"
        case .tool: return "Tools"
        case .metodology: return "Metodology"
        case .softSkill: return "Soft skills"
        case .language: return "Languages"
        }
    }
}
