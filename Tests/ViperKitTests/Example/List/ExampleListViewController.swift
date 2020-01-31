//
//  ExampleListViewController.swift
//  
//
//  Created by hicka04 on 2020/01/31.
//

import Foundation
import ViperKit

class ViewController {}
protocol ExampleListView: ViperKit.View {}

class ExampleListViewController<Presenter: ExampleListViewPresentation>: ViewController, ExampleListView {
    
    var persenter: Presenter!
}
