//
//  Copyright 2020 Readium Foundation. All rights reserved.
//  Use of this source code is governed by the BSD-style license
//  available in the top-level LICENSE file of the project.
//

import Foundation
import PDFKit

@available(iOS 11.0, *)
final class PDFDocumentHolder {
    
    private var href: String?
    private var document: PDFKit.PDFDocument?
    
    func set(_ document: PDFKit.PDFDocument, at href: String) {
        self.href = href
        self.document = document
    }

}

@available(iOS 11.0, *)
extension PDFDocumentHolder: PDFDocumentFactory {
    
    func open(url: URL, password: String?) throws -> PDFDocument {
        guard let document = document, url.absoluteString == href else {
            throw PDFDocumentError.openFailed
        }
        return document
    }
    
    func open(resource: Resource, password: String?) throws -> PDFDocument {
        guard let document = document, resource.link.href == href else {
            throw PDFDocumentError.openFailed
        }
        return document
    }
    
}
