//
//  Created by Tomasz Załoga on 30/01/2021.
//

import Foundation
import SwiftUI
import PDFGenerator

final class PDFCreator {
    
    static func generate<V: View>(view: V, name: String, completion: @escaping (URL?) -> Void) {
        guard let fileUrl = fileUrl(with: name) else {
            completion(nil)
            return
        }
        let pdfView = self.pdfView(with: view)

        do {
            try PDFGenerator.generate(pdfView, to: fileUrl)
            completion(fileUrl)
        } catch {
            completion(nil)
        }
    }
    
    private static func fileUrl(with name: String) -> URL? {
        guard let documentDirectory = FileManager.default
                .urls(for: .documentDirectory, in: .userDomainMask)
                .first
        else { return nil }
        
        return documentDirectory
            .appendingPathComponent(name)
            .appendingPathExtension("pdf")
    }
    
    private static func pdfView<V: View>(with view: V) -> UIView {
        let pageSize = PDFPageSize.A4
        let dpi = self.dpi(with: view)
        let pdfViewController = UIHostingController(rootView: view)
        pdfViewController.view.frame = CGRect(origin: .zero, size: pageSize * dpi.scaleFactor)
        pdfViewController.additionalSafeAreaInsets = UIEdgeInsets(top: .standard, left: 0, bottom: 0, right: 0)
        
        let rootViewController = UIApplication.shared.windows.first?.rootViewController
        rootViewController?.addChild(pdfViewController)
        rootViewController?.view.insertSubview(pdfViewController.view, at: 0)
        
        pdfViewController.view.setNeedsLayout()
        pdfViewController.view.layoutIfNeeded()
        
        pdfViewController.removeFromParent()
        pdfViewController.view.removeFromSuperview()
        
        return pdfViewController.view
    }
    
    private static func dpi<V: View>(with view: V) -> DPIType {
        // TODO: hardcoded value, for current content
        return .custom(132.0)
    }
}

fileprivate extension CGSize {
    static func *(size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width * value, height: size.height * value)
    }
}
