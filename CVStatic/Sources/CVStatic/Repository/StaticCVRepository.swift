//
//  Created by Tomasz Załoga on 02/04/2020.
//

import Foundation
import CVDomain

final class StaticCVRepository: CVRepository {
    
    // MARK: - CVRepository
    
    func cv() -> CV? {
        return CV(
            userData: userData(),
            education: education(),
            workExperience: workExperience(),
            skills: skills())
    }
    
    // MARK: - UserData
    
    private func userData() -> UserData? {
        return UserDataBuilder()
            .set(firstName: "Tomasz")
            .set(lastName: "Załoga")
            .set(birthDate: date(year: 1989, month: 12, day: 4))
            // TODO: Since image is referenced by name, should be providen with package
            .set(avatarName: "Avatar")
            .set(contactKind: .linkedIn,
                 link: "https://www.linkedin.com/in/tomasz-zaloga",
                 imageName: "LinkedIn")
            .set(contactKind: .email,
                 link: "zalogatomek@gmail.com",
                 imageName: "Email")
            .set(contactKind: .stackOverflow,
                 link: "https://stackoverflow.com/users/4850928/tzaloga",
                 imageName: "StackOverflow")
            .set(contactKind: .github,
                 link: "https://github.com/zalogatomek?tab=repositories",
                 imageName: "GitHub")
            .set(summary: summary)
            .build()
    }
    
    private var summary: String {
        "I am a software developer with 7 years of experience, focused on developing applications for the iOS platform for 5 years. I have experience in both one-man and large agile teams. I feel best writing in Swift, but I'm not afraid of Objective-C either. Recently, I have been enthusiastically expanding my knowledge about Vapor - a web framework written in Swift."
    }
    
    // MARK: - Education
    
    private func education() -> [Education] {
        let study = EducationBuilder()
            .set(startDate: date(year: 2008, month: 10))
            .set(endDate: date(year: 2012, month: 2))
            .set(schoolName: "Silesian University of Technology")
            .set(degree: "Bachelor of Engineering")
            .set(summary: "Computer Science")
            .build()
        return [study].compactMap { $0 }
    }
    
    // MARK: - Work experience
    
    private func workExperience() -> [Experience] {
        let sirocco = ExperienceBuilder()
            .set(role: "iOS Developer")
            .set(startDate: date(year: 2018, month: 3, day: 26))
            .set(company: "Sirocco Mobile")
            .set(summary: siroccoSummary)
            .build()
        let ipix = ExperienceBuilder()
            .set(role: "Software Developer")
            .set(startDate: date(year: 2013, month: 9, day: 30))
            .set(endDate: date(year: 2018, month: 3, day: 16))
            .set(company: "Ipix S.C.")
            .set(summary: ipixSummary)
            .build()
        return [sirocco, ipix].compactMap { $0 }
    }
    
    var siroccoSummary: String {
        "From the very beginning, my adventure with Sirocco was related to work on the iOS application for Toyota and Lexus. Working in a large scrum team, I was SPOC (Single Point of Contact) for over half a year, being the contact person between the client and the development team."
    }
    
    var ipixSummary: String {
        "My first job was related to gaining experience in several technologies for several clients. I participated in the development of the desktop application in C++ for Polkomtel (Mobile phone network operator), I wrote database functions in SQL for DPD, I also created NCL (NCAR Command Language) scripts for IMGW (Polish Meteorological Institute).\nHowever, I gained the most experience (and satisfaction) by creating small internal iOS applications and associated my career with this technology."
    }
    
    // MARK: - Skills
    
    private func skills() -> [Skill] {
        let swift = SkillBuilder()
            .set(kind: .programmingLanguage)
            .set(name: "Swift")
            .set(level: 0.9)
            .build()
        
        let objectiveC = SkillBuilder()
            .set(kind: .programmingLanguage)
            .set(name: "Objective-C")
            .set(level: 0.6)
            .build()
        
        let uiKit = SkillBuilder()
            .set(kind: .framework)
            .set(name: "UIKit")
            .set(level: 0.8)
            .build()
        
        let iOSSDK = SkillBuilder()
            .set(kind: .framework)
            .set(name: "iOS SDK")
            .set(level: 0.7)
            .build()
        
        let swiftUi = SkillBuilder()
            .set(kind: .framework)
            .set(name: "SwiftUI")
            .set(level: 0.4)
            .build()
        
        let vapor = SkillBuilder()
            .set(kind: .framework)
            .set(name: "Vapor")
            .set(level: 0.3)
            .build()
        
        let xcode = SkillBuilder()
            .set(kind: .tools)
            .set(name: "Xcode")
            .set(level: 0.8)
            .build()
        
        let swiftPackageManager = SkillBuilder()
            .set(kind: .tools)
            .set(name: "Swift Package Manager")
            .set(level: 0.4)
            .build()
        
        let polish = SkillBuilder()
            .set(kind: .language)
            .set(name: "Polish")
            .set(level: 1.0)
            .build()
        
        let english = SkillBuilder()
            .set(kind: .language)
            .set(name: "English")
            .set(level: 0.6)
            .build()
        
        return [swift, objectiveC, uiKit, iOSSDK, swiftUi, vapor, xcode, swiftPackageManager, polish, english].compactMap { $0 }
    }
    
    // MARK: - Utils
    
    private func date(year: Int, month: Int, day: Int? = nil) -> Date? {
        return Calendar.current.date(from: DateComponents(year: year, month: month, day: day))
    }
}
