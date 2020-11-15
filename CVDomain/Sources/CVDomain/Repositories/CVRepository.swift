//
//  Created by Tomasz Załoga on 02/04/2020.
//  

import Foundation

public protocol CVRepository {
    func fetchCV(completion: (CV?) -> Void)
}
