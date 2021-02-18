//
//  Created by Tomasz Załoga on 04/04/2020.
//

import Foundation
import RxSwift
import CVDomain

public extension CVAPIFactory {
    static func createStatic(locale: Locale) -> CVAPI {
        switch LanguageFactory.language(with: locale) {
        case .english:
            return create(repository: StaticCVRepository())
        case .polish:
            return create(repository: StaticCVPolishRepository())
        }
    }
}
