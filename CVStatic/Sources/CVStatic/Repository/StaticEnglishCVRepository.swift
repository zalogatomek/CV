//
//  Created by Tomasz Załoga on 02/04/2020.
//

import Foundation
import RxSwift
import CVDomain

final class StaticCVRepository: CVRepository {
    
    // MARK: - CVRepository
    
    func cv() -> Single<CV> {
        let cv = CV(
            userData: userData(),
            education: education(),
            workExperience: workExperience(),
            skills: skills()
        )!
        return .just(cv)
    }
    
    // MARK: - UserData
    
    private func userData() -> UserData? {
        return NonLocalizedCVRepositorDataProvider
            .userDataBuilder()
            .set(summary: summary)
            .build()
    }
    
    private var summary: String {
        "I am a software developer with 7 years of experience, focused on developing applications for the iOS platform for 5 years. I have experience in both one-man and large agile teams. I feel best writing in Swift, but I'm not afraid of Objective-C either. Recently, I have been enthusiastically expanding my knowledge about Vapor - a web framework written in Swift."
    }
    
    // MARK: - Education
    
    private func education() -> [Education] {
        let study = NonLocalizedCVRepositorDataProvider
            .studyBuilder()
            .set(schoolName: "Silesian University of Technology")
            .set(degree: "Bachelor of Engineering")
            .set(summary: "Computer Science")
            .build()
        
        return [study].compactMap { $0 }
    }
    
    // MARK: - Work experience
    
    private func workExperience() -> [Experience] {
        let sirocco = NonLocalizedCVRepositorDataProvider
            .siroccoBuilder()
            .set(summary: siroccoSummary)
            .build()
        let ipix = NonLocalizedCVRepositorDataProvider
            .ipixBuilder()
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
        let swift = NonLocalizedCVRepositorDataProvider
            .swiftBuilder()
            .build()
        
        let objectiveC = NonLocalizedCVRepositorDataProvider
            .objectiveCBuilder()
            .build()
        
        let iOSSDK = NonLocalizedCVRepositorDataProvider
            .iOSSDKBuilder()
            .build()
        
        let uiKit = NonLocalizedCVRepositorDataProvider
            .uiKitBuilder()
            .build()
        
        let swiftUi = NonLocalizedCVRepositorDataProvider
            .swiftUiBuilder()
            .build()
        
        let rxSwift = NonLocalizedCVRepositorDataProvider
            .rxSwiftBuilder()
            .build()
        
        let mapBox = NonLocalizedCVRepositorDataProvider
            .mapBoxBuilder()
            .build()
        
        let optimizely = NonLocalizedCVRepositorDataProvider
            .optimizelyBuilder()
            .build()
        
        let vapor = NonLocalizedCVRepositorDataProvider
            .vaporBuilder()
            .build()
        
        let xcode = NonLocalizedCVRepositorDataProvider
            .xcodeBuilder()
            .build()
        
        let git = NonLocalizedCVRepositorDataProvider
            .gitBuilder()
            .build()
        
        let jira = NonLocalizedCVRepositorDataProvider
            .jiraBuilder()
            .build()
        
        let cocoaPods = NonLocalizedCVRepositorDataProvider
            .cocoaPodsBuilder()
            .build()
        
        let carthage = NonLocalizedCVRepositorDataProvider
            .carthageBuilder()
            .build()
        
        let swiftPackageManager = NonLocalizedCVRepositorDataProvider
            .swiftPackageManagerBuilder()
            .build()
        
        let scrum = NonLocalizedCVRepositorDataProvider
            .scrumPodsBuilder()
            .build()
        
        let ddd = NonLocalizedCVRepositorDataProvider
            .dddBuilder()
            .build()
        
        let cleanCode = NonLocalizedCVRepositorDataProvider
            .cleanCodeBuilder()
            .build()
        
        let mvvm = NonLocalizedCVRepositorDataProvider
            .mvvmBuilder()
            .build()
        
        let unitTesting = NonLocalizedCVRepositorDataProvider
            .unitTestingBuilder()
            .set(name: "Unit testing")
            .build()
        
        let proactivity = NonLocalizedCVRepositorDataProvider
            .proactivityBuilder()
            .set(name: "Proactivity")
            .build()
        
        let teamPlayer = NonLocalizedCVRepositorDataProvider
            .teamPlayerBuilder()
            .set(name: "Team player")
            .set(level: 0.8)
            .build()
        
        let problemSolving = NonLocalizedCVRepositorDataProvider
            .problemSolvingBuilder()
            .set(name: "Problem solving")
            .build()
        
        let polish = NonLocalizedCVRepositorDataProvider
            .polishBuilder()
            .set(name: "Polish")
            .build()
        
        let english = NonLocalizedCVRepositorDataProvider
            .englishBuilder()
            .set(name: "English")
            .build()
        
        return [
            swift, objectiveC,
            iOSSDK, uiKit, swiftUi, rxSwift, mapBox, optimizely, vapor,
            xcode, git, jira, cocoaPods, carthage, swiftPackageManager,
            scrum, ddd, cleanCode, mvvm, unitTesting,
            proactivity, teamPlayer, problemSolving,
            polish, english
        ].compactMap { $0 }
    }
}
