//
//  ExampleDetailRouter.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation
import ViperKit

protocol ExampleDetailWireframe: Wireframe
    where Destination == ExampleDetailDestination {}

enum ExampleDetailDestination: ViperKit.Destination {
    
}

final class ExampleDetailRouter: ExampleDetailWireframe {
    
    private typealias View = ExampleDetailViewController<Presenter>
    private typealias Presenter = ExampleDetailViewPresenter<Router>
    private typealias Router = ExampleDetailRouter
    
    private unowned let viewController: ViewController
    
    private init(viewController: ViewController) {
        self.viewController = viewController
    }
    
    static func assembleModule(_ example: Example) -> ViewController {
        let view = View()
        let router = Router(viewController: view)
        let presenter = Presenter(view: view, router: router)
        view.persenter = presenter
        return view
    }
    
    func navigate(to destination: ExampleDetailDestination) {
        
    }
    
}
