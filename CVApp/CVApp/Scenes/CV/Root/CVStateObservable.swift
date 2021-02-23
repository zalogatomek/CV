//
//  Created by Tomasz Załoga on 23/02/2021.
//

import Foundation
import CVDomain
import RxSwift
import RxRelay

final class CVStateObservable: ObservableConvertibleType {
    
    enum State {
        case loading
        case loaded(CV)
        case error
    }
    
    enum Action {
        case load
    }
    
    // MARK: - Properties
    
    private let api: CVAPI
    private let stateRelay: BehaviorRelay<State> = BehaviorRelay(value: .loading)
    var state: State { stateRelay.value }
    private let disposeBag: DisposeBag = DisposeBag()
    
    // MARK: - Lifecycle
    
    init(api: CVAPI) {
        self.api = api
    }
    
    // MARK: - Action handling
    
    func perform(_ action: Action) {
        switch action {
        case .load:
            fetchCV()
        }
    }
    
    private func fetchCV() {
        stateRelay.accept(.loading)
        api.cv()
            .subscribe(onSuccess: { [weak self] (cv) in
                self?.handle(cv: cv)
            }, onFailure: { [weak self] (error) in
                self?.handle(error: error)
            })
            .disposed(by: disposeBag)
    }
    
    // MARK: - API response handling
    
    private func handle(cv: CV) {
        stateRelay.accept(.loaded(cv))
    }
    
    private func handle(error: Error) {
        stateRelay.accept(.error)
    }
    
    // MARK: - ObservableConvertibleType
    
    func asObservable() -> Observable<State> {
        stateRelay.asObservable()
    }
}
