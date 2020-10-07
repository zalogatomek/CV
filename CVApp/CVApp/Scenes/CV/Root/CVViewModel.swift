//
//  Created by Tomasz Załoga on 05/04/2020.
//

import Foundation
import CVDomain

final class CVViewModel {
    
    // MARK: - Properties
    
    private let useCase: CVUseCase
    private var cv: CV?
    
    // MARK: - Lifecycle
    
    init(useCase: CVUseCase) {
        self.useCase = useCase
        setupCV()
    }
    
    private func setupCV() {
        cv = useCase.cv()
    }
    
    // MARK: - Input
    
    // MARK: - Output
    
    var items: [CVViewItem] {
        guard let cv = cv else { return [] }
        return CVViewItemFactory.create(with: cv)
    }
}
