//
//  Created by Tomasz Załoga on 18/04/2020.
//

import Vapor
import Leaf

struct HomeController: RouteCollection {
    
    // MARK: - Boot
    
    func boot(routes: RoutesBuilder) throws {
        routes.get(use: homeHandler)
    }
    
    // MARK: - GET

    func homeHandler(_ request: Request) throws -> EventLoopFuture<View> {
        return request.view.render("Education/Education")
    }
}
