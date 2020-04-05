//
//  Created by Tomasz Załoga on 02/04/2020.
//

import Foundation

public final class UserDataBuilder {
    
    // MARK: - Properties
    
    private var firstName: String?
    private var lastName: String?
    private var birthDate: Date?
    private var photoUrl: String?
    private var photoName: String?
    private var avatarUrl: String?
    private var avatarName: String?
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
    
    public func set(photoUrl: String?) -> Self {
        self.photoUrl = photoUrl
        return self
    }
    
    public func set(photoName: String?) -> Self {
        self.photoName = photoName
        return self
    }
    
    public func set(avatarUrl: String?) -> Self {
        self.avatarUrl = avatarUrl
        return self
    }
    
    public func set(avatarName: String?) -> Self {
        self.avatarName = avatarName
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
            photo: photo(),
            avatar: avatar(),
            email: Email(email),
            address: Address(
                street: street,
                postCode: postCode,
                city: city),
            summary: summary)
    }
    
    // MARK: - Helpers
    
    private func photo() -> Photo? {
        if let photoUrl = photoUrl, let url = URL(string: photoUrl) {
            return .path(url: url)
        } else if let photoName = photoName {
            return .asset(named: photoName)
        }
        return nil
    }
    
    private func avatar() -> Photo? {
        if let avatarUrl = avatarUrl, let url = URL(string: avatarUrl) {
            return .path(url: url)
        } else if let avatarName = avatarName {
            return .asset(named: avatarName)
        }
        return nil
    }
}
