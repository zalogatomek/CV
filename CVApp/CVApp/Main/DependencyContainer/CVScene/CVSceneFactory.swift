//
//  Created by Tomasz Załoga on 06/04/2020.
//

import Foundation

protocol CVSceneFactory {
    static func createCvView() -> CVView
    static func createCvViewModel() -> CVViewModel
}
