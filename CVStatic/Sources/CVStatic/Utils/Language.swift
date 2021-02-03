//
//  Created by Tomasz Załoga on 03/02/2021.
//

import Foundation

enum Language: String {
    case english = "en"
    case polish = "pl"
}

struct LanguageFactory {
    static func language(with locale: Locale) -> Language {
        guard let languageCode = locale.languageCode,
            let language = Language(rawValue: languageCode)
        else { return .english }
        
        return language
    }
}
