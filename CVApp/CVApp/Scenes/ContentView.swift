//
//  Created by Tomasz Załoga on 21/03/2020.
//  

import SwiftUI

import CVDomain
// TODO: Use DI
import CVStatic

struct ContentView: View {
    let cvUseCase: CVUseCase
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // TODO: Use DI
        ContentView(cvUseCase: CVStaticFactory.createCvUseCase())
    }
}
