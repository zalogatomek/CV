//
//  Created by Tomasz Załoga on 10/10/2020.
//

import UIKit
import CVDomain

struct CVContactItemFactory {
    
    // MARK: - Create
    
    static func create(with contacts: [UserData.Contact]) -> [CVContactItem] {
        return contacts.compactMap { contact in
            guard let url = url(for: contact.kind, link: contact.link),
                  let displayableUrl = displayableUrl(for: contact.kind, link: contact.link)
            else { return nil }
            
            return CVContactItem(
                imageName: imageName(with: contact.image),
                url: url,
                displayableUrl: displayableUrl
            )
        }
    }
    
    // MARK: - Image
    
    private static func imageName(with photo: Photo) -> String {
        guard case .asset(let imageName) = photo else { return "" }
        return imageName
    }
    
    // MARK: - URL
    
    private static func url(for kind: UserData.Contact.Kind, link: String) -> URL? {
        switch kind {
        case .email: return URL(string: "mailto:\(link)")
        case .phone: return URL(string: "tel:\(link)")
        default: return URL(string: link)
        }
    }
    
    private static func displayableUrl(for kind: UserData.Contact.Kind, link: String) -> String? {
        guard let url = url(for: kind, link: link) else { return nil }
        var displayableUrl = url.absoluteString
        
        if let scheme = url.scheme {
            displayableUrl = displayableUrl.replacingOccurrences(of: scheme, with: "")
            displayableUrl = displayableUrl.trimmingCharacters(in: CharacterSet.init(charactersIn: ":/"))
        }
        if let query = url.query {
            displayableUrl = displayableUrl.replacingOccurrences(of: query, with: "")
            displayableUrl = displayableUrl.trimmingCharacters(in: CharacterSet.init(charactersIn: "?"))
        }
        if kind == .phone {
            displayableUrl = displayableUrl.replacingOccurrences(of: "-", with: " ")
        }
        
        return displayableUrl
    }
}
