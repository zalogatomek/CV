//
//  Created by Tomasz Załoga on 04/04/2020.
//

import Foundation
import CVDomain

public final class CVStaticFactory {
    public static func createCvUseCase() -> CVUseCase {
        return CVUseCase(repository: StaticCVRepository())
    }
}
