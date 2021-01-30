//
//  Created by Tomasz Załoga on 06/04/2020.
//

import Foundation

class RangeDateFormatter {
    
    // MARK: - Properties
    
    private lazy var dateFormatter: DateFormatter = {
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("LLLLYYYY")
        return dateFormatter
    }()
    
    // MARK: - String formating
    
    func string(from startDate: Date, to endDate: Date?) -> String {
        let startString = dateFormatter.string(from: startDate)
        if let endDate = endDate {
            let endString = dateFormatter.string(from: endDate)
            return "\(startString) - \(endString)"
        } else {
            return "\(startString) - currently"
        }
    }
}
