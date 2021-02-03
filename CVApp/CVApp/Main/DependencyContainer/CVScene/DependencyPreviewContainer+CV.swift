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
        // TODO: Use Different approach to get Stub in synch
        let group = DispatchGroup()
        group.enter()
        
        var cv: CV?
        CVStaticFactory.createCvUseCase(locale: Locale.current).fetchCV { fetchedCv in
            cv = fetchedCv
            group.leave()
        }
        group.wait()
        
        return cv!
    }
}
