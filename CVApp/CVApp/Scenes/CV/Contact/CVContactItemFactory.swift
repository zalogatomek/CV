//
//  Created by Tomasz Załoga on 10/10/2020.
//

import UIKit
import CVDomain

struct CVContactItemFactory {
    
    // MARK: - Create
    
    static func create(with contacts: [UserData.Contact]) -> [CVContactItem] {
        return contacts.map { contact in
            CVContactItem(
                imageName: imageName(with: contact.image),
                action: action(for: contact.kind, link: contact.link)
            )
        }
    }
    
    // MARK: - Image
    
    private static func imageName(with photo: Photo) -> String {
        guard case .asset(let imageName) = photo else { return "" }
        return imageName
    }
    
    // MARK: - Action
    
    private static func action(for kind: UserData.Contact.Kind, link: String) -> () -> Void {
        switch kind {
        case .email:
            return emailAction(with: link)
        default:
            return websiteAction(with: link)
        }
    }
    
    private static func emailAction(with email: String) -> () -> Void {
        return {
            guard let emailUrl = URL(string: "mailto:\(email)") else { return }
            UIApplication.shared.open(emailUrl)
        }
    }
    
    private static func websiteAction(with link: String) -> () -> Void {
        return {
            guard let url = URL(string: link) else { return }
            UIApplication.shared.open(url)
        }
    }
}
