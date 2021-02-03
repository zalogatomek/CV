//
//  Created by Tomasz Załoga on 07/10/2020.
//

import Foundation
import CVDomain

struct CVViewItemFactory {
    static func create(with cv: CV) -> [CVViewItem] {
        var items: [CVViewItem] = []
        
        items.append(.summary(viewModel: CVSummaryViewModel(userData: cv.userData)))
        items.append(.header(title: "EXPERIENCE".localized))
        items.append(contentsOf: cv.workExperience.map {
            .experience(viewModel: CVExperienceViewModel(experience: $0))
        })
        items.append(.header(title: "EDUCATION".localized))
        items.append(contentsOf: cv.education.map {
            .education(viewModel: CVEducationViewModel(education: $0))
        })
        items.append(.header(title: "SKILLS".localized))
        items.append(skillsItem(with: cv))
        items.append(.header(title: "CONTACT".localized))
        items.append(.contact(viewModel: CVContactViewModel(contacts: cv.userData.contacts)))
        
        return items
    }
    
    private static func skillsItem(with cv: CV) -> CVViewItem {
        var skillsViewModels: [CVSkillsViewModel] = []
        Skill.Kind.allCases.forEach { kind in
            let skills = cv.skills.filter({ $0.kind == kind })
            if skills.count > 0 {
                skillsViewModels.append(CVSkillsViewModel(skills: skills))
            }
        }
        return .skills(viewModel: CVSkillsGridViewModel(items: skillsViewModels))
    }
}
