//
//  Created by Tomasz Załoga on 04/04/2020.
//

import Foundation
import CVDomain

public final class CVStaticFactory {
    public static func createCvUseCase(locale: Locale) -> CVUseCase {
        switch LanguageFactory.language(with: locale) {
        case .english:
            return CVUseCase(repository: StaticCVRepository())
        case .polish:
            return CVUseCase(repository: StaticCVPolishRepository())
        }
    }
}
