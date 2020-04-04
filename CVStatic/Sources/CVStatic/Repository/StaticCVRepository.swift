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
            .build()
    }
    
    // MARK: - Education
    
    private func education() -> [Education] {
        let study = EducationBuilder()
            .set(startDate: date(year: 2005, month: 9))
            .set(endDate: date(year: 2008, month: 6))
            .set(schoolName: "Silesian University of Technology")
            .build()
        return [study].compactMap { $0 }
    }
    
    // MARK: - Work experience
    
    private func workExperience() -> [Experience] {
        let sirocco = ExperienceBuilder()
            .set(startDate: date(year: 2018, month: 3, day: 26))
            .set(companyName: "Sirocco Mobile")
            .build()
        return [sirocco].compactMap { $0 }
    }
    
    // MARK: - Skills
    
    private func skills() -> [Skill] {
        let swift = SkillBuilder()
            .set(kind: .programmingLanguage)
            .set(name: "Swift")
            .set(level: 0.8)
            .build()
        
        return [swift].compactMap { $0 }
    }
    
    // MARK: - Utils
    
    private func date(year: Int, month: Int, day: Int? = nil) -> Date? {
        return Calendar.current.date(from: DateComponents(year: year, month: month, day: day))
    }
}
