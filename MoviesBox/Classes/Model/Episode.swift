//
//  Episode.swift
//  MoviesBox
//
//  Created by Ahmed Ali on 15/05/2022.
//

import Foundation

// MARK: - EpisodeMainResponse
struct EpisodeMainResponse: Codable {
    let data: EpisodeResponse
}

// MARK: - DataClass
struct EpisodeResponse: Codable {
    let media: [Course]
}

// MARK: - Media
struct Course: Codable {
    let type, title: String
    let coverAsset: CoverAsset
    let channel: Channels
}

// MARK: - Channel
struct Channels: Codable {
    let title: String
}
