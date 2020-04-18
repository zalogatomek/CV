//
//  Created by Tomasz Załoga on 18/04/2020.
//

import Vapor
import Leaf

struct HomeController: RouteCollection {
    
    // MARK: - Boot
    
    func boot(router: Router) throws {
        router.get(use: homeHandler)
    }
    
    // MARK: - GET

    func homeHandler(_ request: Request) throws -> Future<View> {
        return try request.view().render("Home")
    }
}
