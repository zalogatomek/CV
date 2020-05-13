//
//  Created by Tomasz Załoga on 09/04/2020.
//

import SwiftUI

struct IfLet<Value, Content: View>: View {
    private let value: Value?
    private let contentProvider: (Value) -> Content
    
    init(_ value: Value?, @ViewBuilder content: @escaping (Value) -> Content) {
        self.value = value
        self.contentProvider = content
    }
    
    var body: some View {
        value.map(contentProvider)
    }
}

struct IfLet_Previews: PreviewProvider {
    private static let notNil: String? = "Text"
    private static let aNil: String? = nil
    
    static var previews: some View {
        Group {
            Text("First")
                .previewLayout(.fixed(width: 200, height: 50))
            
            IfLet(notNil) { value in
                Text(value)
                    .previewLayout(.fixed(width: 200, height: 50))
            }
            
            IfLet(aNil) { value in
                Text(value)
                    .previewLayout(.fixed(width: 200, height: 50))
            }
            
            Text("Last")
                .previewLayout(.fixed(width: 200, height: 50))
        }
    }
}
