//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Yusuf İhsan Görgel on 13.12.2022.
//

import Foundation

class JokesViewModel: ObservableObject {

    init(jokesService: IJokesService) {
        self.jokesService = jokesService
        Task.detached {  // task detached when want to use async func in init
            await self.fetchWholeItems()
        }
    }

    let jokesService: IJokesService
    @Published var joke: JokesModel?


    func fetchWholeItems() async {
        joke = await jokesService.fetchJokes()
    }

}
