import Vapor
import Leaf

public func configure(_ app: Application) throws {
    
    // MARK: - Router
    
//    let router = EngineRouter.default()
//    try routes(router)
//    services.register(router, as: Router.self)
    
    // MARK: - Middleware

    let fileMiddleware = FileMiddleware(publicDirectory: app.directory.publicDirectory)
    app.middleware.use(fileMiddleware)
    
    // MARK: - Leaf
    
    app.views.use(.leaf)
    
    // MARK: - Register routes
    
    try routes(app)
}
