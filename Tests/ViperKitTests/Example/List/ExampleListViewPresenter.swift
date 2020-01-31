//
//  ExampleListViewPresenter.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation
import ViperKit

protocol ExampleListViewPresentation: Presentation {}

final class ExampleListViewPresenter<Router: ExampleListWireframe, Interactor: ExampleUsecase>: ExampleListViewPresentation {
    
    private weak var view: ExampleListView?
    private let router: Router
    private let interactor: Interactor
    
    private var examples: [Example] = []
    
    init(view: ExampleListView?,
         router: Router,
         interactor: Interactor) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    enum Event: ViperKit.ViewEvent {
        case viewDidLoad
        case didSeletRow(_ row: Int)
    }
    
    func recieve(_ event: Event) {
        switch event {
        case .viewDidLoad:
            interactor.execute(()) { [weak self] result in
                switch result {
                case .success(let examples):
                    self?.examples = examples
                case .failure:
                    break
                }
            }
            
        case .didSeletRow(let row):
            router.navigate(to: .exampleDetail(examples[row]))
        }
    }
}
