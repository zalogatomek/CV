//
//  Created by Tomasz Załoga on 18/02/2021.
//

import Foundation
import RxSwift
import RxBlocking
import CVDomain
import CVStatic

final class CVDependencyContainer {
    
    // MARK: - CVView
    
    static func createCvView() -> CVView {
        return CVView(viewModel: createCvViewModel())
    }
    
    private static func createCvViewModel() -> CVViewModel {
        let api = CVAPIFactory.createStatic(locale: Locale.current)
        return CVViewModel(api: api)
    }
    
    // MARK: - Preview Data
    
    static var previewCVViewModel: CVViewModel {
        // TODO: Use preview CV
        return createCvViewModel()
    }
    
    static var previewCV: CV {
        return try! CVAPIFactory
            .createStatic(locale: Locale(identifier: "en-GB"))
            .cv()
            .toBlocking()
            .first()!
    }
}
