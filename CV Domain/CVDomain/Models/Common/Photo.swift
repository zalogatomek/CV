//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct Photo {
    public let url: URL
    
    public init?(_ stringUrl: String?) {
        guard let stringUrl = stringUrl else { return nil }
        self.init(URL(string: stringUrl))
    }
    
    public init?(_ url: URL?) {
        guard let url = url else { return nil }
        self.url = url
    }
}
