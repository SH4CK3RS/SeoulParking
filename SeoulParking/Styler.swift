//
//  Styler.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

enum Styler{
    enum Font{
        static let defaultBold = "AppleSDGothicNeo-Bold"
        static let `default` = "AppleSDGothicNeo-Regular"
        static let defaultLight =  "AppleSDGothicNeo-Light"
    }
    enum Color{
        enum Main{
            static let `default` = UIColor.init(hexString: "#1b1b1b")
            static let tint = UIColor.init(hexString: "#c3ad8b")

        }
        enum Text{
            static let primary = UIColor.init(hexString: "#212121")
            static let second = UIColor.init(hexString: "#757575")
            
        }
        static let dividerColor = UIColor.init(hexString: "#BDBDBD")
        //Red
        enum Red{
            static let darkPrimary = UIColor.init(hexString: "#D32F2F")
            static let lightPrimary = UIColor.init(hexString: "#FFCDD2")
            static let primary = UIColor.init(hexString: "#F44336")
            static let accent = UIColor.init(hexString: "#FF5252")
        }
        enum Pink{
            static let darkPrimary = UIColor.init(hexString: "#C2185B")
            static let lightPrimary = UIColor.init(hexString: "#F8BBD0")
            static let primary = UIColor.init(hexString: "#E91E63")
            static let accent = UIColor.init(hexString: "#FF4081")

        }
//
//        //Purple
//        let purpleDarkPrimary =                         UIColor.init(hexString: "#7B1FA2")
//        let purpleLightPrimary =                        UIColor.init(hexString: "#E1BEE7")
//        let purplePrimary =                             UIColor.init(hexString: "#9C27B0")
//        let purpleAccent =                              UIColor.init(hexString: "#E040FB")
//
//        //DeepPurple
//        let deepPurpleDarkPrimary =                     UIColor.init(hexString: "#512DA8")
//        let deepPurpleLightPrimary =                    UIColor.init(hexString: "#D1C4E9")
//        let deepPurplePrimary =                         UIColor.init(hexString: "#673AB7")
//        let deepPurpleAccent =                          UIColor.init(hexString: "#7C4DFF")
//
//        //Indigo
//        let indigoDarkPrimary =                         UIColor.init(hexString: "#303F9F")
//        let indigoLightPrimary =                        UIColor.init(hexString: "#C5CAE9")
//        let indigoPrimary =                             UIColor.init(hexString: "#3F51B5")
//        let indigoAccent =                              UIColor.init(hexString: "#536DFE")
//
//        //Blue
//        let blueDarkPrimary =                           UIColor.init(hexString: "#1976D2")
//        let blueLightPrimary =                          UIColor.init(hexString: "#BBDEFB")
//        let bluePrimary =                               UIColor.init(hexString: "#2196F3")
//        let blueAccent =                                UIColor.init(hexString: "#448AFF")
//
//        //LightBlue
//        let lightBlueDarkPrimary =                      UIColor.init(hexString: "#0288D1")
//        let lightBlueLightPrimary =                     UIColor.init(hexString: "#B3E5FC")
//        let lightBluePrimary =                          UIColor.init(hexString: "#03A9F4")
//        let lightBlueAccent =                           UIColor.init(hexString: "#03A9F4")
//
//        //Cyan
//        let cyanDarkPrimary =                           UIColor.init(hexString: "#0097A7")
//        let cyanLightPrimary =                          UIColor.init(hexString: "#BBDEFB")
//        let cyanPrimary =                               UIColor.init(hexString: "#2196F3")
//        let cyanAccent =                                UIColor.init(hexString: "#448AFF")
//
//        //Teal
//        let tealDarkPrimary =                           UIColor.init(hexString: "#00796B")
//        let tealLightPrimary =                          UIColor.init(hexString: "#B2DFDB")
//        let tealPrimary =                               UIColor.init(hexString: "#009688")
//        let tealAccent =                                UIColor.init(hexString: "#009688")
//
//        //Green
//        let greenDarkPrimary =                          UIColor.init(hexString: "#388E3C")
//        let greenLightPrimary =                         UIColor.init(hexString: "#C8E6C9")
//        let greenPrimary =                              UIColor.init(hexString: "#4CAF50")
//        let greenAccent =                               UIColor.init(hexString: "#4CAF50")
//
//        //LightGreen
//        let lightGreenDarkPrimary =                     UIColor.init(hexString: "#AFB42B")
//        let lightGreenLightPrimary =                    UIColor.init(hexString: "#F0F4C3")
//        let lightGreenPrimary =                         UIColor.init(hexString: "#CDDC39")
//        let lightGreenAccent =                          UIColor.init(hexString: "#CDDC39")
//
//        //Lime
//        let limeDarkPrimary =                           UIColor.init(hexString: "#00796B")
//        let limeLightPrimary =                          UIColor.init(hexString: "#B2DFDB")
//        let limePrimary =                               UIColor.init(hexString: "#009688")
//        let limeAccent =                                UIColor.init(hexString: "#009688")
//
//        //Yellow
//        let yellowDarkPrimary =                         UIColor.init(hexString: "#FBC02D")
//        let yellowLightPrimary =                        UIColor.init(hexString: "#FFF9C4")
//        let yellowPrimary =                             UIColor.init(hexString: "#FFEB3B")
//        let yellowAccent =                              UIColor.init(hexString: "#FFEB3B")
//
//        //Amber
//        let amberDarkPrimary =                          UIColor.init(hexString: "#FFA000")
//        let amberLightPrimary =                         UIColor.init(hexString: "#FFECB3")
//        let amberPrimary =                              UIColor.init(hexString: "#FFC107")
//        let amberAccent =                               UIColor.init(hexString: "#FFC107")
//
//        //Orange
//        let orangeDarkPrimary =                         UIColor.init(hexString: "#F57C00")
//        let orangeLightPrimary =                        UIColor.init(hexString: "#FFE0B2")
//        let orangePrimary =                             UIColor.init(hexString: "#FF9800")
//        let orangeAccent =                              UIColor.init(hexString: "#FF9800")
//
//        //DeepOrange
//        let deepOrangeDarkPrimary =                     UIColor.init(hexString: "#E64A19")
//        let deepOrangeLightPrimary =                    UIColor.init(hexString: "#FFCCBC")
//        let deepOrangePrimary =                         UIColor.init(hexString: "#FF5722")
//        let deepOrangeAccent =                          UIColor.init(hexString: "#FF5722")
//
//        //Brown
//        let brownDarkPrimary =                          UIColor.init(hexString: "#5D4037")
//        let brownLightPrimary =                         UIColor.init(hexString: "#D7CCC8")
//        let brownPrimary =                              UIColor.init(hexString: "#795548")
//        let brownAccent =                               UIColor.init(hexString: "#795548")
//
//        //Gray
//        let grayDarkPrimary =                           UIColor.init(hexString: "#616161")
//        let grayLightPrimary =                          UIColor.init(hexString: "#F5F5F5")
//        let grayPrimary =                               UIColor.init(hexString: "#9E9E9E")
//        let graynAccent =                               UIColor.init(hexString: "#9E9E9E")
//
//        //BlueGray
//        let blueGrayDarkPrimary =                       UIColor.init(hexString: "#455A64")
//        let blueGrayLightPrimary =                      UIColor.init(hexString: "#CFD8DC")
//        let blueGrayPrimary =                           UIColor.init(hexString: "#607D8B")
//        let blueGraynAccent =                           UIColor.init(hexString: "#607D8B")
    }
}
