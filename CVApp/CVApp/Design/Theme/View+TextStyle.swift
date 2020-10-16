//
//  Created by Tomasz Załoga on 16/10/2020.
//

import SwiftUI

enum FontStyle {
    case header
    case paragraph
    case paragraphBold
    case detail
    
    var font: Font {
        switch self {
        case .header: return .header
        case .paragraph: return .paragraph
        case .paragraphBold: return .paragraphBold
        case .detail: return .detail
        }
    }
}

enum TextColor {
    case primary
    case secondary
    case light
    
    var color: Color {
        switch self {
        case .primary: return .textPrimary
        case .secondary: return .textSecondary
        case .light: return .textLight
        }
    }
}

extension View {
    func textStyle(_ fontStyle: FontStyle, _ textColor: TextColor = .primary) -> some View {
        return self
            .font(fontStyle.font)
            .foregroundColor(textColor.color)
            .lineSpacing(2.0)
    }
}

struct TextStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: .wide) {
            Text("HEADER")
                .textStyle(.header)
            Text("Paragraph Bold")
                .textStyle(.paragraphBold)
            Text("Paragraph")
                .textStyle(.paragraph, .secondary)
            Text("Detials")
                .textStyle(.detail, .light)
                .background(Color.accentSecondary)
            Text("Multiline\ntext")
                .multilineTextAlignment(.center)
                .textStyle(.paragraph)
        }
        .previewLayout(.fixed(width: 300, height: 300))
    }
}
