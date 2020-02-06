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
        let animation = Intro.Ready.ViewModel.Animation(images: createImageArray(total: 523, imagePrefix: "intro"))
        
        let viewModel = Intro.Ready.ViewModel(animationData: animation)
        viewController?.displayReady(viewModel)
    }
    
    //MARK: - Helper
    func createImageArray(total: Int, imagePrefix: String)->[UIImage] {
        var imageArray: [UIImage] = []
        for imageCount in 0..<total{
            let countString = String.init(format: "%04d", imageCount)
            let imageName = "\(imagePrefix)\(countString)"
            let image = UIImage(named: imageName)
            imageArray.append(image!)
        }
        return imageArray
    }
}
