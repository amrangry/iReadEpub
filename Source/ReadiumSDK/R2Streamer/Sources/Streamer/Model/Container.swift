//
//  Container.swift
//  r2-streamer-swift
//
//  Created by Olivier Körner on 14/12/2016.
//
//  Copyright 2018 Readium Foundation. All rights reserved.
//  Use of this source code is governed by a BSD-style license which is detailed
//  in the LICENSE file present in the project repository where this source code is maintained.
//

import Foundation
//import R2Shared

/// Container protocol associated errors.
///
/// - streamInitFailed: The inputStream initialisation failed.
/// - fileNotFound: The file could not be found.
/// - fileError: An error occured while accessing the file attributes.
/// - missingFile: The file at the given path couldn't not be found.
/// - xmlParse: An error occured while parsing XML (See underlyingError for more infos).
/// - missingLink: The given `Link` ressource couldn't be found in the container.
public enum ContainerError: Error {
    // Stream initialization failed.
    case streamInitFailed
    // The file couldn't be found.
    case fileNotFound
    // An error occured while accessing the file attributes.
    case fileError
    // The file is missing from the publication.
    case missingFile(path: String)
    // Error while parsing XML
    case xmlParse(underlyingError: Error)
    // The link with given title couldn't be found in the container
    case missingLink(title: String?)
}
