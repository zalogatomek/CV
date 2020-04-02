//
//  Created by Tomasz Załoga on 02/04/2020.
//

import Foundation

public final class UserDataBuilder {
    
    // MARK: - Properties
    
    private var firstName: String?
    private var lastName: String?
    private var birthDate: Date?
    private var photo: String?
    private var avatar: String?
    private var email: String?
    private var street: String?
    private var postCode: String?
    private var city: String?
    private var summary: String?
    
    // MARK: - Lifecycle
    
    public init() { }
    
    // MARK: - Building
    
    public func set(firstName: String?) -> Self {
        self.firstName = firstName
        return self
    }
    
    public func set(lastName: String?) -> Self {
        self.lastName = lastName
        return self
    }
    
    public func set(birthDate: Date?) -> Self {
        self.birthDate = birthDate
        return self
    }
    
    public func set(photo: String?) -> Self {
        self.photo = photo
        return self
    }
    
    public func set(avatar: String?) -> Self {
        self.avatar = avatar
        return self
    }
    
    public func set(email: String?) -> Self {
        self.email = email
        return self
    }
    
    public func set(street: String?) -> Self {
        self.street = street
        return self
    }
    
    public func set(postCode: String?) -> Self {
        self.postCode = postCode
        return self
    }
    
    public func set(city: String?) -> Self {
        self.city = city
        return self
    }
    
    public func set(summary: String?) -> Self {
        self.summary = summary
        return self
    }
    
    public func build() -> UserData? {
        return UserData(
            firstName: Name(firstName),
            lastName: Name(lastName),
            birthDate: birthDate,
            photo: Photo(photo),
            avatar: Photo(avatar),
            email: Email(email),
            address: Address(
                street: street,
                postCode: postCode,
                city: city),
            summary: summary)
    }
}
