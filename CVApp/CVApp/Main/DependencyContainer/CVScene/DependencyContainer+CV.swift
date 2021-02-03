//
//  Created by Tomasz Załoga on 06/04/2020.
//

import Foundation
import CVDomain
import CVStatic

extension DependencyContainer: CVSceneFactory {
    
    // MARK: - CV Scene
    
    static func createCvView() -> CVView {
        return CVView(viewModel: createCvViewModel())
    }
    
    static func createCvViewModel() -> CVViewModel {
        return CVViewModel(useCase: CVStaticFactory.createCvUseCase(locale: Locale.current))
    }
}
