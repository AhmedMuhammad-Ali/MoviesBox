//
//  Channel.swift
//  MoviesBox
//
//  Created by Ahmed Ali on 15/05/2022.
//

import Foundation

// MARK: - ChannelMainResponse
struct ChannelMainResponse: Codable {
    let data: ChannelResponse
}

// MARK: - DataClass
struct ChannelResponse: Codable {
    let channels: [Channel]
}

// MARK: - Channel
struct Channel: Codable {
    let title: String
    let series: [Series]
    let mediaCount: Int
    let latestMedia: [LatestMedia]
    let id: String?
    let iconAsset: IconAsset?
    let coverAsset: CoverAsset
    let slug: String?
}

// MARK: - CoverAsset
struct CoverAsset: Codable {
    let url: String
}

// MARK: - IconAsset
struct IconAsset: Codable {
    let thumbnailURL: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case thumbnailURL = "thumbnailUrl"
        case url
    }
}

// MARK: - LatestMedia
struct LatestMedia: Codable {
    let type: MediaType
    let title: String
    let coverAsset: CoverAsset
}

enum MediaType: String, Codable {
    case course = "course"
    case video = "video"
}

// MARK: - Series
struct Series: Codable {
    let title: String
    let coverAsset: CoverAsset
    let id: String?
}
