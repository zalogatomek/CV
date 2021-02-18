//
//  Created by Tomasz Załoga on 02/04/2020.
//  

import RxSwift

public protocol CVRepository {
    func cv() -> Single<CV>
}
