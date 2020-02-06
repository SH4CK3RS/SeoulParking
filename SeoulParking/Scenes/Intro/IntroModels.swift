//
//  IntroModels.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

enum Intro{
    enum Ready{
        struct Request{
            
        }
        struct Response{
            
        }
        struct ViewModel{
            struct BackgroundImageViewModel {
                var images: [UIImage]
            }
            struct StartButtonModel{
                var text: String
                var textColor: UIColor
                var backgroundColor: UIColor
            }
            
            var backgroundImageView: BackgroundImageViewModel
            var startButton: StartButtonModel
        }
    }
}
