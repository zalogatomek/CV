//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct CV {
    public let userData: UserData
    public let education: [Education]
    public let workExperience: [Experience]
    public let skills: [Skill]
    
    public init?(userData: UserData?,
                 education: [Education]?,
                 workExperience: [Experience]?,
                 skills: [Skill]?)
    {
        guard let userData = userData else { return nil }
        
        self.userData = userData
        self.education = education ?? []
        self.workExperience = workExperience ?? []
        self.skills = skills ?? []
    }
}
