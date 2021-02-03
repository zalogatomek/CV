//
//  Created by Tomasz Załoga on 03/02/2021.
//

import Foundation
import CVDomain

struct NonLocalizedCVRepositorDataProvider {
    
    // MARK: - UserData
    
    static func userDataBuilder() -> UserDataBuilder {
        return UserDataBuilder()
            .set(firstName: "Tomasz")
            .set(lastName: "Załoga")
            .set(birthDate: date(year: 1989, month: 12, day: 4))
            // TODO: Since images are referenced by name, should be providen with package
            .set(avatarName: "Avatar")
            .set(contactKind: .email,
                 link: "zalogatomek@gmail.com",
                 imageName: "Email")
            .set(contactKind: .phone,
                 link: "507-891-204",
                 imageName: "Phone")
            .set(contactKind: .webpage,
                 link: "http://zalogatomek.com",
                 imageName: "Webpage")
            .set(contactKind: .linkedIn,
                 link: "https://linkedin.com/in/tomasz-zaloga",
                 imageName: "LinkedIn")
            .set(contactKind: .stackOverflow,
                 link: "https://stackoverflow.com/users/4850928/zalogatomek",
                 imageName: "StackOverflow")
            .set(contactKind: .github,
                 link: "https://github.com/zalogatomek?tab=repositories",
                 imageName: "GitHub")
    }
    
    // MARK: - Education
    
    static func studyBuilder() -> EducationBuilder {
        let study = EducationBuilder()
            .set(startDate: date(year: 2008, month: 10))
            .set(endDate: date(year: 2012, month: 2))
        
        return study
    }
    
    // MARK: - Work Experience
    
    static func siroccoBuilder() -> ExperienceBuilder {
        return ExperienceBuilder()
            .set(role: "iOS Developer")
            .set(startDate: date(year: 2018, month: 3, day: 26))
            .set(company: "Sirocco Mobile")
    }
    
    static func ipixBuilder() -> ExperienceBuilder {
        return ExperienceBuilder()
            .set(role: "Software Developer")
            .set(startDate: date(year: 2013, month: 9, day: 30))
            .set(endDate: date(year: 2018, month: 3, day: 16))
            .set(company: "Ipix S.C.")
    }
    
    // MARK: - Skills
    
    static func swiftBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .programmingLanguage)
            .set(name: "Swift")
            .set(level: 0.9)
    }
    
    static func objectiveCBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .programmingLanguage)
            .set(name: "Objective-C")
            .set(level: 0.6)
    }
    
    static func iOSSDKBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .framework)
            .set(name: "iOS SDK")
            .set(level: 0.7)
    }
    
    static func uiKitBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .framework)
            .set(name: "UIKit")
            .set(level: 0.8)
    }
    
    static func swiftUiBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .framework)
            .set(name: "SwiftUI")
            .set(level: 0.4)
    }
    
    static func rxSwiftBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .framework)
            .set(name: "RxSwift")
            .set(level: 0.7)
    }
    
    static func optimizelyBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .framework)
            .set(name: "Optimizely")
            .set(level: 0.5)
    }
    
    static func vaporBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .framework)
            .set(name: "Vapor")
            .set(level: 0.3)
    }
    
    static func xcodeBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .tool)
            .set(name: "Xcode")
            .set(level: 0.8)
    }
    
    static func gitBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .tool)
            .set(name: "Git")
            .set(level: 0.6)
    }
    
    static func jiraBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .tool)
            .set(name: "Jira")
            .set(level: 0.6)
    }
    
    static func cocoaPodsBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .tool)
            .set(name: "CocoaPods")
            .set(level: 0.8)
    }
    
    static func carthageBuilder() -> SkillBuilder {
        SkillBuilder()
            .set(kind: .tool)
            .set(name: "Carthage")
            .set(level: 0.8)
    }
    
    static func swiftPackageManagerBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .tool)
            .set(name: "SPM")
            .set(level: 0.4)
    }
    
    static func scrumPodsBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .metodology)
            .set(name: "Scrum")
            .set(level: 0.8)
    }
    
    static func dddBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .metodology)
            .set(name: "DDD")
            .set(level: 0.7)
    }
    
    static func cleanCodeBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .metodology)
            .set(name: "Clean Code")
            .set(level: 0.7)
    }
    
    static func mvvmBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .metodology)
            .set(name: "MVVM")
            .set(level: 0.9)
    }
    
    static func unitTestingBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .metodology)
            .set(level: 0.7)
    }
    
    static func proactivityBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .softSkill)
            .set(level: 0.9)
    }
    
    static func teamPlayerBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .softSkill)
            .set(level: 0.8)
    }
    
    static func problemSolvingBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .softSkill)
            .set(level: 0.8)
    }
    
    static func polishBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .language)
            .set(level: 1.0)
    }
    
    static func englishBuilder() -> SkillBuilder {
        return SkillBuilder()
            .set(kind: .language)
            .set(level: 0.6)
    }
    
    // MARK: - Utils
    
    private static func date(year: Int, month: Int, day: Int? = nil) -> Date? {
        return Calendar.current.date(from: DateComponents(year: year, month: month, day: day))
    }
}
