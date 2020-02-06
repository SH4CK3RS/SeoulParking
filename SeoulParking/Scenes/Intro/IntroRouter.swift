//
//  IntroRouter.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

@objc protocol IntroRoutingLogic{
    func routeToLogin()
}

protocol IntroDataPassing{
    var dataStore: IntroDataStore? { get }
}

class IntroRouter: NSObject, IntroRoutingLogic, IntroDataPassing{
    weak var viewController: IntroViewController?
    var dataStore: IntroDataStore?
    
    //MARK: Routing Logic
    func routeToLogin() {
        let destinationVC = LoginViewController()
//        var destinationDS = destinationVC.router!.dataStore!
        navigateToLogin(source: viewController!, destination: destinationVC)
    }
    //MARK: Navigation Logic
    func navigateToLogin(source: IntroViewController, destination: LoginViewController){
        destination.modalPresentationStyle = .overFullScreen
        destination.modalTransitionStyle = .crossDissolve
        source.present(destination, animated: false, completion: nil)
    }
    //MARK: Data Passing Logic
}

