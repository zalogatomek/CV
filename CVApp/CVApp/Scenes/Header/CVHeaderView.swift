//
//  Created by Tomasz Załoga on 04/04/2020.
//

import SwiftUI

struct CVHeaderView: View {
    let viewModel: CVHeaderViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            CircleImage(viewModel.imageName ?? "")
                .frame(width: 100.0, height: 100.0)
            
            VStack {
                Text(viewModel.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                Text(viewModel.summary ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.body)
            }
        }
    }
}

struct CVHeaderView_Previews: PreviewProvider {
    
    static var viewModel: CVHeaderViewModel {
        CVHeaderViewModel(
            name: "John Appleseed",
            summary: "Hello, I'm John, and this is my CV",
            imageName: "Avatar")
    }
    
    static var previews: some View {
        CVHeaderView(viewModel: viewModel)
            .frame(width: 300.0, height: nil)
            .previewLayout(.sizeThatFits)
    }
}
