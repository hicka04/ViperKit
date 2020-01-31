//
//  Wireframe.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation

public protocol Wireframe: AnyObject {
    
    associatedtype Destination: ViperKit.Destination
    
    func navigate(to destination: Destination)
}

public protocol Destination {}
