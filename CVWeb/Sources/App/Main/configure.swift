import Vapor
import Leaf

public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    
    // MARK: - Router
    
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)
    
    // MARK: - Middleware

    var middlewares = MiddlewareConfig()
    middlewares.use(FileMiddleware.self)
    services.register(middlewares)
    
    // MARK: - Leaf
    
    try services.register(LeafProvider())
    config.prefer(LeafRenderer.self, for: ViewRenderer.self)
}
