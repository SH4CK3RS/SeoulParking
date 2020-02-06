//
//  IntroWorker.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

class IntroWorker{
    func getAnimationImages() -> [UIImage]{
        return createImageArray(total: 523, imagePrefix: "intro")
    }
    //MARK: - Helper
    private func createImageArray(total: Int, imagePrefix: String)->[UIImage] {
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
