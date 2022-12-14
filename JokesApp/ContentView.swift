//
//  ContentView.swift
//  JokesApp
//
//  Created by Yusuf İhsan Görgel on 13.12.2022.
//

import SwiftUI
import ActivityIndicatorView
struct ContentView: View {
    @StateObject var jokesViewModel = JokesViewModel(jokesService: JokesService())
    var body: some View {
        if jokesViewModel.joke == nil {
            LoadingView()
        } else {
            
            UserExtractedView(model: jokesViewModel.joke!)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct UserExtractedView: View {
    let model: JokesModel

    var body: some View {
        HStack {
            Text(model.value)
            Text(model.id)
        }
    }
}


struct LoadingView: View{
    var body: some View {
        VStack{
            Spacer()
            ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
                .frame(width: 50, height: 50, alignment: .center)
            
        }
    }
}
