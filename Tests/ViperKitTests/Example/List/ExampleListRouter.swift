//
//  ExampleListRouter.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation
import ViperKit

protocol ExampleListWireframe: Wireframe
    where Destination == ExampleListDestination {}

enum ExampleListDestination: ViperKit.Destination {
    case exampleDetail(Example)
}

final class ExampleListRouter: ExampleListWireframe {
    
    private typealias View = ExampleListViewController<Presenter>
    private typealias Presenter = ExampleListViewPresenter<Router, Interactor>
    private typealias Router = ExampleListRouter
    private typealias Interactor = ExampleInteractor
    
    private unowned let viewController: ViewController
    
    private init(viewController: ViewController) {
        self.viewController = viewController
    }
    
    static func assembleModule() -> ViewController {
        let view = View()
        let router = Router(viewController: view)
        let interactor = Interactor()
        let presenter = Presenter(view: view, router: router, interactor: interactor)
        view.persenter = presenter
        return view
    }
    
    func navigate(to destination: ExampleListDestination) {
        switch destination {
        case .exampleDetail(let example):
            _ = ExampleDetailRouter.assembleModule(example)
        }
    }
    
}
