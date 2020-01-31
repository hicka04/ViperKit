//
//  ExampleDetailViewController.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation
import ViperKit

protocol ExampleDetailView: ViperKit.View {}

class ExampleDetailViewController<Presenter: ExampleDetailViewPresentation>: ViewController, ExampleDetailView {
    
    var persenter: Presenter!
}
