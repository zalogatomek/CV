//
//  Created by Tomasz Załoga on 18/02/2021.
//

import RxSwift

public protocol CVAPI {
    func cv() -> Single<CV>
}

final class CVService: CVAPI {
    
    // MARK: - Properties
    
    private let repository: CVRepository
    
    // MARK: - Lifecycle
    
    init(repository: CVRepository) {
        self.repository = repository
    }
    
    // MARK: - CVAPI
    
    func cv() -> Single<CV> {
        repository.cv()
    }
}
