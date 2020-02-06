//
//  IntroRouter.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

@objc protocol IntroRoutingLogic{
    
}

protocol IntroDataPassing{
    var dataStore: IntroDataStore? { get }
}

class IntroRouter: NSObject, IntroRoutingLogic, IntroDataPassing{
    weak var viewController: IntroViewController?
    var dataStore: IntroDataStore?
    
    //MARK: Routing Logic
    
    //MARK: Navigation Logic
    
    //MARK: Data Passing Logic
}

