//
//  IntroPresenter.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

protocol IntroPresentationLogic {
    func presentReady(_ response: Intro.Ready.Response)
}
class IntroPresenter: IntroPresentationLogic{
    weak var viewController: IntroDisplayLogic?
    func presentReady(_ response: Intro.Ready.Response) {
        let viewModel = Intro.Ready.ViewModel(images: response.images)
        viewController?.displayReady(viewModel)
    }
    
    
}
