//
//  Created by Tomasz Załoga on 02/04/2020.
//

import Foundation

public final class SkillBuilder {
    
    // MARK: - Properties
    
    private var kind: Skill.Kind?
    private var name: String?
    private var level: Double?
    
    // MARK: - Lifecycle
    
    public init() { }
    
    // MARK: - Building
    
    public func set(kind: Skill.Kind?) -> Self {
        self.kind = kind
        return self
    }
    
    public func set(name: String?) -> Self {
        self.name = name
        return self
    }
    
    public func set(level: Double?) -> Self {
        self.level = level
        return self
    }
    
    public func build() -> Skill? {
        return Skill(
            kind: kind,
            name: Name(name),
            level: Skill.Level(level))
    }
}
