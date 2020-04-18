import Vapor

public func routes(_ router: Router) throws {
    
    // MARK: - Home
    
    let homeController = HomeController()
    try router.register(collection: homeController)
}
