//
//  Created by Tomasz Załoga on 05/04/2020.
//

import Foundation
import CVDomain

class CVViewModel {
    
    // MARK: - Properties
    
    private let useCase: CVUseCase
    private var cv: CV?
    
    // MARK: - Lifecycle
    
    init(useCase: CVUseCase) {
        self.useCase = useCase
        setupCV()
    }
    
    private func setupCV() {
        cv = useCase.cv()
    }
    
    // MARK: - Input
    
    // MARK: - Output
    
    var header: CVSummaryViewModel? {
        guard let cv = cv else { return nil }
        return CVSummaryViewModel(userData: cv.userData)
    }
    
    var experience: [CVExperienceViewModel] {
        guard let cv = cv else { return [] }
        return cv.workExperience.map{ CVExperienceViewModel(experience: $0) }
    }
    
}
