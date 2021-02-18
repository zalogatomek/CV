//
//  Created by Tomasz Załoga on 18/02/2021.
//

import Foundation

public struct CVAPIFactory {
    public static func create(repository: CVRepository) -> CVAPI {
        return CVService(repository: repository)
    }
}
