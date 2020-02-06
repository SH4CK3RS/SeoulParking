//
//  IntroInteractor.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

protocol IntroBusinessLogic{
    
}
protocol IntroDataStore{
    
}
class IntroInteractor: IntroBusinessLogic, IntroDataStore{
    var presenter: IntroPresentationLogic?
}
