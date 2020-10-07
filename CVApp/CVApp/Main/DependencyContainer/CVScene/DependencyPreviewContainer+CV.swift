//
//  Created by Tomasz Załoga on 06/04/2020.
//

import Foundation
import CVDomain
import CVStatic

extension DependencyPreviewContainer: CVSceneFactory {
    
    // MARK: - CVSceneFactory
    
    static func createCvView() -> CVView {
        return DependencyContainer.createCvView()
    }
    
    static func createCvViewModel() -> CVViewModel {
        return DependencyContainer.createCvViewModel()
    }
    
    static func createCV() -> CV {
        return CVStaticFactory.createCvUseCase().cv()!
    }
}
