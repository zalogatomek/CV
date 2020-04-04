//
//  Created by Tomasz Załoga on 04/04/2020.
//

import SwiftUI

struct CVHeaderViewModel {
    let name: String
    let summary: String?
    let imageName: String?
}

struct CVHeaderView: View {
    let viewModel: CVHeaderViewModel
    
    var body: some View {
        HStack {
            Image(viewModel.imageName ?? "")
            
            VStack {
                Text(viewModel.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(viewModel.summary ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct CVHeaderView_Previews: PreviewProvider {
    
    static var viewModel: CVHeaderViewModel {
        CVHeaderViewModel(
            name: "John Appleseed",
            summary: "Hello, I'm John, and this is my CV",
            imageName: nil)
    }
    
    static var previews: some View {
        CVHeaderView(viewModel: viewModel)
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
