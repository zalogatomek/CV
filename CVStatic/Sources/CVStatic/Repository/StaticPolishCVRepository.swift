//
//  Created by Tomasz Załoga on 02/04/2020.
//

import Foundation
import CVDomain

final class StaticCVPolishRepository: CVRepository {
    
    // MARK: - CVRepository
    
    func fetchCV(completion: (CV?) -> Void) {
        let cv = CV(
            userData: userData(),
            education: education(),
            workExperience: workExperience(),
            skills: skills()
        )
        completion(cv)
    }
    
    // MARK: - UserData
    
    private func userData() -> UserData? {
        return NonLocalizedCVRepositorDataProvider
            .userDataBuilder()
            .set(summary: summary)
            .build()
    }
    
    private var summary: String {
        "Jestem software developerem z 8 letnim stażem, od 6 lat skupionym na tworzeniu aplikacji na platformę iOS. Uwielbiam pisać kod w Swift'cie, część swojego wolnego czasu poświęcając na tworzenie aplikacji w tym języku na inne platformy."
    }
    
    // MARK: - Education
    
    private func education() -> [Education] {
        let study = NonLocalizedCVRepositorDataProvider
            .studyBuilder()
            .set(schoolName: "Politechnika Śląska w Gliwicach")
            .set(degree: "Inżynier")
            .set(summary: "Informatyka")
            .build()
        
        return [study].compactMap { $0 }
    }
    
    // MARK: - Work experience
    
    private func workExperience() -> [Experience] {
        let alsoft = NonLocalizedCVRepositorDataProvider
            .alsoftBuilder()
            .set(summary: alsoftSummary)
            .build()
        let sirocco = NonLocalizedCVRepositorDataProvider
            .siroccoBuilder()
            .set(summary: siroccoSummary)
            .build()
        let ipix = NonLocalizedCVRepositorDataProvider
            .ipixBuilder()
            .set(summary: ipixSummary)
            .build()
        
        return [alsoft, sirocco, ipix].compactMap { $0 }
    }

    var alsoftSummary: String {
        "W Alsoft pracuje w dużym zespole scrumowym, będąc jednym z developerów odpowiedzialnym za rozwój aplikacji Colgate hum."
    }
    
    var siroccoSummary: String {
        "Moja przygoda z Sirocco od początku związana jest z pracą nad aplikacją iOS dla Toyoty oraz Lexusa. Pracując w dużym zespole scrumowym, przez okres ponad pół roku pełniłem rolę osoby kontaktowej (Single Point of Contact), pomiędzy klientem a zespołem developerskim."
    }
    
    var ipixSummary: String {
        "Moja pierwsza praca związana była ze zdobywaniem doświadczeń w kilku technologiach dla kilku klientów. Uczestniczyłem w rozwijaniu aplikacji desktopowej w C++ dla Polkomtela, pisałem funkcje bazodanowe w SQL dla DPD, tworzyłem również skrypty NCL (Ncarg Command Language) dla IMGW.\nJednak najwięcej doświadczenia (oraz satysfakcji) zdobyłem tworząc niewielkie wewnętrzne aplikacje na iOS i z tą technologią związałem swoją karierę."
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
            .set(name: "Testy jednostkowe")
            .build()
        
        let proactivity = NonLocalizedCVRepositorDataProvider
            .proactivityBuilder()
            .set(name: "Proaktywność")
            .build()
        
        let teamPlayer = NonLocalizedCVRepositorDataProvider
            .teamPlayerBuilder()
            .set(name: "Praca zespołowa")
            .build()
        
        let problemSolving = NonLocalizedCVRepositorDataProvider
            .problemSolvingBuilder()
            .set(name: "Kreatywne rozwiązywanie problemów")
            .build()
        
        let polish = NonLocalizedCVRepositorDataProvider
            .polishBuilder()
            .set(name: "Polski")
            .build()
        
        let english = NonLocalizedCVRepositorDataProvider
            .englishBuilder()
            .set(name: "Angielski")
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
    
    // MARK: - Utils
    
    private func date(year: Int, month: Int, day: Int? = nil) -> Date? {
        return Calendar.current.date(from: DateComponents(year: year, month: month, day: day))
    }
}
