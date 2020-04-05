//
//  Created by Tomasz Załoga on 21/03/2020.
//  

import SwiftUI

import CVDomain
// TODO: Use DI
import CVStatic

struct CVView: View {
    let viewModel: CVViewModel
    
    var body: some View {
        VStack(spacing: 8.0) {
            CVHeaderView(viewModel: viewModel.header!)
            Spacer()
        }
        .padding()
    }
}

struct CVView_Previews: PreviewProvider {
    
    static var viewModel: CVViewModel {
        // TODO: Use DI/Stub?
        let cvUseCase = CVStaticFactory.createCvUseCase()
        return CVViewModel(useCase: cvUseCase)
    }
    
    static var previews: some View {
        return CVView(viewModel: viewModel)
    }
}
