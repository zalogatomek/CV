//
//  Created by Tomasz Załoga on 05/04/2020.
//

import Foundation
import RxSwift
import CVDomain

final class CVViewModel {
    
    // MARK: - Properties
    
    private let api: CVAPI
    private var cv: CV?
    private let disposeBag: DisposeBag = DisposeBag()
    
    // MARK: - Lifecycle
    
    init(api: CVAPI) {
        self.api = api
        setupCV()
    }
    
    private func setupCV() {
        api.cv()
            .subscribe(onSuccess: { (cv) in
                self.cv = cv
            })
            .disposed(by: disposeBag)
    }
    
    // MARK: - Output
    
    var header: String {
        return summaryViewModel?.name ?? ""
    }
    
    var summaryViewModel: CVSummaryViewModel? {
        guard case .summary(let viewModel) = items.first(where: {
            guard case .summary = $0 else { return false }
            return true
        }) else { return nil }
        
        return viewModel
    }
    
    var items: [CVViewItem] {
        guard let cv = cv else { return [] }
        return CVViewItemFactory.create(with: cv)
    }
}
