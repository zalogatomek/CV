//
//  Created by Tomasz Załoga on 15/05/2020.
//

import SwiftUI

extension Font {
    
    private static let fontName = "Montserrat"
    
    static var header: Font {
        let size = UIFont.preferredFont(forTextStyle: .title1).pointSize
        return Font.custom(fontName, fixedSize: size).bold()
    }
    
    static var paragraph: Font {
        let size = UIFont.preferredFont(forTextStyle: .body).pointSize
        return Font.custom(fontName, fixedSize: size)
    }
    
    static var paragraphBold: Font {
        return paragraph.bold()
    }
    
    static var detail: Font {
        let size = UIFont.preferredFont(forTextStyle: .caption1).pointSize
        return Font.custom(fontName, fixedSize: size)
    }
}
