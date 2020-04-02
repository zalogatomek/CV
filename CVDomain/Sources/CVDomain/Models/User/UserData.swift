//
//  Created by Tomasz Załoga on 22/03/2020.
//

import Foundation

public struct UserData {
    public let firstName: Name
    public let lastName: Name
    public let birthDate: Date
    public let photo: Photo?
    public let avatar: Photo?
    public let email: Email?
    public let address: Address?
    public let summary: String?
    
    public init?(firstName: Name?,
                 lastName: Name?,
                 birthDate: Date?,
                 photo: Photo?,
                 avatar: Photo?,
                 email: Email?,
                 address: Address?,
                 summary: String?)
    {
        guard let firstName = firstName,
            let lastName = lastName,
            let birthDate = birthDate
        else { return nil }
        
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.photo = photo
        self.avatar = avatar
        self.email = email
        self.address = address
        self.summary = summary
    }
}
