//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct UserData {
    
    public struct Contact {
        public enum Kind {
            case email
            case phone
            case webpage
            case linkedIn
            case stackOverflow
            case github
        }
        
        public let kind: Kind
        public let link: String
        public let image: Photo
        
        public init?(kind: Kind?, link: String?, image: Photo?) {
            guard let kind = kind, let link = link, let image = image else { return nil }
            self.kind = kind
            self.link = link
            self.image = image
        }
    }
    
    public let firstName: Name
    public let lastName: Name
    public let birthDate: Date?
    public let photo: Photo?
    public let avatar: Photo?
    public let address: Address?
    public let contacts: [Contact]
    public let summary: String?
    
    public init?(
        firstName: Name?,
        lastName: Name?,
        birthDate: Date?,
        photo: Photo?,
        avatar: Photo?,
        address: Address?,
        contacts: [Contact]?,
        summary: String?
    ) {
        guard let firstName = firstName,
            let lastName = lastName
        else { return nil }
        
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.photo = photo
        self.avatar = avatar
        self.address = address
        self.contacts = contacts ?? []
        self.summary = summary
    }
}
