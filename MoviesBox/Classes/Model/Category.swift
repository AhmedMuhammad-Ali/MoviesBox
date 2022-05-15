//
//  Category.swift
//  MoviesBox
//
//  Created by Ahmed Ali on 15/05/2022.
//

import Foundation

// MARK: - CategoryMainResponse
struct CategoryMainResponse: Codable {
    let data: CategoryResponse
}

// MARK: - DataClass
struct CategoryResponse: Codable {
    let categories: [Category]
}

// MARK: - Category
struct Category: Codable {
    let name: String
}
