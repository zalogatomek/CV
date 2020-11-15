//
//  Created by Tomasz Załoga on 02/04/2020.
//  

import Foundation

public final class CVUseCase {
    
    // MARK: - Properties
    
    private let repository: CVRepository
    
    // MARK: - Lifecycle
    
    public init(repository: CVRepository) {
        self.repository = repository
    }
    
    // MARK: - UseCase
    
    public func fetchCV(completion: (CV?) -> Void) {
        return repository.fetchCV(completion: completion)
    }
}
