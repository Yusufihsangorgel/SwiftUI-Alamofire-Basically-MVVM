//
//  Logging+AFError.swift
//  JokesApp
//
//  Created by Yusuf İhsan Görgel on 14.12.2022.
//

import Foundation
import Alamofire
import Logging

extension AFError {
   private static let logger = Logger(label: "")
    func showError()  {
        AFError.logger.error("\(String(describing: errorDescription?.description))")
    }
}

