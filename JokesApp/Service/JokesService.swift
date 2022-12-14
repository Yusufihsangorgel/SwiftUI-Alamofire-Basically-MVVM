//
//  JokesService.swift
//  JokesApp
//
//  Created by Yusuf İhsan Görgel on 14.12.2022.
//


import Foundation
import Alamofire

protocol IJokesService {

    func fetchJokes() async -> JokesModel?
}


struct JokesService: IJokesService {

    func fetchJokes() async -> JokesModel? {
        let request = AF.request(ServicePath.random.toService()).serializingDecodable(JokesModel.self)
        let response = await request.response
        response.error?.showError()
        return response.value
    }

}

//https://api.chucknorris.io/jokes/random
private enum ServicePath: String {
    case random = "random"

    func toService() -> String {
        return "https://api.chucknorris.io/jokes/\(rawValue)"
    }
}
