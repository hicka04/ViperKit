//
//  Usecase.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation

public protocol Usecase: AnyObject {
    
    associatedtype Input
    associatedtype Output
    associatedtype Failure: Error
    
    func execute(_ input: Input,
                 completion: @escaping (Result<Output, Failure>) -> Void)
}
