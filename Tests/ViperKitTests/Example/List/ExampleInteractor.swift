//
//  ExampleInteractor.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation
import ViperKit

protocol ExampleUsecase: Usecase
    where Input == Void,
          Output == [Example],
          Failure == ExampleInteractorError {}

enum ExampleInteractorError: Error {
    case error
}

final class ExampleInteractor: ExampleUsecase {
    
    func execute(_ input: (), completion: @escaping (Result<[Example], ExampleInteractorError>) -> Void) {
        completion(.success([]))
    }    
}
