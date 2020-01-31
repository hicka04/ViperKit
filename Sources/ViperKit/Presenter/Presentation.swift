//
//  Presentation.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation

public protocol Presentation: AnyObject {
    
    associatedtype Event: ViewEvent
    
    func recieve(_ event: Event)
}

public protocol ViewEvent {}
