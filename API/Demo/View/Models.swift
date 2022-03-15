//
//  Models.swift
//  API
//
//  Created by oops on 08/03/22.
//

import Foundation

struct Result:Codable {
    let id: String
    let lines: [ResultItem]
}

struct ResultItem: Codable {
    let id: String
    let source_page: Int
    let source_line: Int
    let gurmukhi: gurmukhi
    let translations: translations
}

struct gurmukhi: Codable {
    let SGPC: String
}

struct translations: Codable {
    let english: english
    let punjabi: punjabi
}

struct english: Codable {
    let kohli: kohli
}

struct punjabi: Codable {
    let jaggi: jaggi
}

struct kohli: Codable {
    let translation: String
}

struct jaggi: Codable {
    let translation: String
}

struct Results: Codable {
    let id: String
}
