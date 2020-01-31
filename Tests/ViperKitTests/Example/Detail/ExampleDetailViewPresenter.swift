//
//  ExampleDetailViewPresenter.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation
import ViperKit

protocol ExampleDetailViewPresentation: Presentation {}

final class ExampleDetailViewPresenter<Router: ExampleDetailWireframe>: ExampleDetailViewPresentation {
    
    private weak var view: ExampleDetailView?
    private let router: Router
    
    init(view: ExampleDetailView?,
         router: Router) {
        self.view = view
        self.router = router
    }
    
    enum Event: ViperKit.ViewEvent {
        case viewDidLoad
    }
    
    func recieve(_ event: Event) {
        switch event {
        case .viewDidLoad:
            break
        }
    }
}
