//
//  Copyright 2021 Readium Foundation. All rights reserved.
//  Use of this source code is governed by the BSD-style license
//  available in the top-level LICENSE file of the project.
//
import Foundation

#if !SWIFT_PACKAGE
extension Bundle {

    #if !COCOAPODS
    /// Returns R2Streamer's bundle by querying an arbitrary type.
    static let module = Bundle(for: Streamer.self)
    #else
    /// Returns R2Streamer's bundle by querying for the cocoapods bundle.
    static let module = Bundle.getCocoaPodsBundle()
    static func getCocoaPodsBundle() -> Bundle {
        let rootBundle = Bundle(for: Streamer.self)
        guard let resourceBundleUrl = rootBundle.url(forResource: "iReadEpub", withExtension: "bundle") else {
            fatalError("Unable to locate iReadEpub.bundle")
        }
        guard let bundle = Bundle(url: resourceBundleUrl) else {
            fatalError("Unable to load iReadEpub.bundle")
        }

        return bundle
    }
    #endif
}
#endif
