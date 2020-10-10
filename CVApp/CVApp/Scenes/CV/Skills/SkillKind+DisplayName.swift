//
//  Created by Tomasz Załoga on 10/10/2020.
//

import Foundation
import CVDomain

extension Skill.Kind {
    var displayName: String {
        switch self {
        case .programmingLanguage: return "Programming Languages"
        case .tools: return "Tools"
        case .framework: return "Frameworks"
        case .language: return "Languages"
        }
    }
}
