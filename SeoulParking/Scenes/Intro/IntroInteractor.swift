//
//  IntroInteractor.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

protocol IntroBusinessLogic{
    func readyView(_ request: Intro.Ready.Request)
}
protocol IntroDataStore{
    
}
class IntroInteractor: IntroBusinessLogic, IntroDataStore{
    var presenter: IntroPresentationLogic?
    var worker = IntroWorker()
    func readyView(_ request: Intro.Ready.Request) {
        let images = worker.getAnimationImages()
        let response = Intro.Ready.Response(images: images)
        presenter?.presentReady(response)
    }
}
