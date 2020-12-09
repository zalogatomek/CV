import Vapor

func routes(_ app: Application) throws {
    
    // MARK: - Home
    
    let homeController = HomeController()
    try app.routes.register(collection: homeController)
}
