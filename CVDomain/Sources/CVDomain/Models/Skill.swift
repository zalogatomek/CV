//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct Skill {
    public enum Kind: CaseIterable {
        case programmingLanguage
        case framework
        case tool
        case metodology
        case softSkill
        case language
    }
    
    public struct Level: Value {
        public let value: Double
        
        public init?(_ value: Double?) {
            guard let value = value else { return nil }
            self.value = value
        }
    }
    
    public let kind: Kind
    public let name: Name
    public let level: Level
    
    public init?(kind: Kind?, name: Name?, level: Level?) {
        guard let kind = kind,
            let name = name,
            let level = level
        else { return nil }
        
        self.kind = kind
        self.name = name
        self.level = level
    }
}
