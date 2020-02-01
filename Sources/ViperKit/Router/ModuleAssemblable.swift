//
//  ModuleAssemblable.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

#if !os(macOS)
import UIKit

public protocol ModuleAssemblable: AnyObject {
    
    associatedtype ViewController: UIViewController
    associatedtype Dependency
    
    static func assembleModule(_ dependency: Dependency) -> ViewController
}
#endif
