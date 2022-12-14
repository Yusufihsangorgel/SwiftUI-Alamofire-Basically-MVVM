//
//  JokesModel.swift
//  JokesApp
//
//  Created by Yusuf İhsan Görgel on 13.12.2022.
//

import Foundation

// MARK: - JokesModel
struct JokesModel: Codable, Identifiable {
    let categories: [String]
    let createdAt: String
    let iconURL: String
    let id, updatedAt: String
    let url: String
    let value: String

    enum CodingKeys: String, CodingKey {
        case categories
        case createdAt = "created_at"
        case iconURL = "icon_url"
        case id
        case updatedAt = "updated_at"
        case url, value
    }
}
