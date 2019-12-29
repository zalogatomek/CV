import Foundation

// MARK: - User main data

struct Name {
    private(set) var value: String
}

struct Email {
    private(set) var value: String
}

struct Address {
    private(set) var street: String
    private(set) var postCode: String
    private(set) var city: String
}

struct Photo {
    private(set) var url: URL
}

struct UserData {
    private(set) var firstName: Name
    private(set) var lastName: Name
    private(set) var birthDate: Date
    private(set) var photo: Photo?
    private(set) var avatar: Photo?
    private(set) var email: Email?
    private(set) var address: Address?
    private(set) var summary: String?
}

// MARK: - Work Experience

struct Responsibility {
    private(set) var value: String
}

struct Experience {
    private(set) var startDate: Date
    private(set) var endDate: Date?
    private(set) var companyName: Name
    private(set) var responsibilities: [Responsibility]
}

// MARK: - Projects

struct Project {
    
}

// MARK: - Education

struct Degree {
    private(set) var value: String
}

struct Education {
    private(set) var startDate: Date
    private(set) var endDate: Date?
    private(set) var schoolName: Name
    private(set) var degree: Degree?
}

// MARK: - Skills

struct Skill {
    enum Kind {
        case programmingLanguage
        case tools
        case frameworks
        case language
    }
    
    struct Name {
        private(set) var value: String
    }
    
    struct Level {
        private(set) var value: Double
    }
}

typealias Skills = [Skill.Kind: [(Skill.Name, Skill.Level)]]
