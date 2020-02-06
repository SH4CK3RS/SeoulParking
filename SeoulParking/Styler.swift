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

        enum Purple{
            static let darkPrimary =                         UIColor.init(hexString: "#7B1FA2")
            static let lightPrimary =                        UIColor.init(hexString: "#E1BEE7")
            static let primary =                             UIColor.init(hexString: "#9C27B0")
            static let accent =                              UIColor.init(hexString: "#E040FB")

        }
        enum DeepPurple{
            static let darkPrimary =                     UIColor.init(hexString: "#512DA8")
            static let lightPrimary =                    UIColor.init(hexString: "#D1C4E9")
            static let primary =                         UIColor.init(hexString: "#673AB7")
            static let accent =                          UIColor.init(hexString: "#7C4DFF")

        }
        enum Indigo{
            static let darkPrimary =                         UIColor.init(hexString: "#303F9F")
            static let lightPrimary =                        UIColor.init(hexString: "#C5CAE9")
            static let primary =                             UIColor.init(hexString: "#3F51B5")
            static let accent =                              UIColor.init(hexString: "#536DFE")
        }
        enum Blue{
            static let darkPrimary =                           UIColor.init(hexString: "#1976D2")
            static let lightPrimary =                          UIColor.init(hexString: "#BBDEFB")
            static let primary =                               UIColor.init(hexString: "#2196F3")
            static let accent =                                UIColor.init(hexString: "#448AFF")
        }
        enum LightBlue{
            static let darkPrimary =                      UIColor.init(hexString: "#0288D1")
            static let lightPrimary =                     UIColor.init(hexString: "#B3E5FC")
            static let primary =                          UIColor.init(hexString: "#03A9F4")
            static let accent =                           UIColor.init(hexString: "#03A9F4")
        }
        enum Cyan{
            static let darkPrimary =                           UIColor.init(hexString: "#0097A7")
            static let lightPrimary =                          UIColor.init(hexString: "#BBDEFB")
            static let primary =                               UIColor.init(hexString: "#2196F3")
            static let accent =                                UIColor.init(hexString: "#448AFF")
        }
        enum Teal{
            static let darkPrimary =                           UIColor.init(hexString: "#00796B")
            static let lightPrimary =                          UIColor.init(hexString: "#B2DFDB")
            static let primary =                               UIColor.init(hexString: "#009688")
            static let accent =                                UIColor.init(hexString: "#009688")
        }
        enum Green{
            static let darkPrimary =                          UIColor.init(hexString: "#388E3C")
            static let lightPrimary =                         UIColor.init(hexString: "#C8E6C9")
            static let primary =                              UIColor.init(hexString: "#4CAF50")
            static let accent =                               UIColor.init(hexString: "#4CAF50")
        }
        enum LightGreen{
            static let darkPrimary =                     UIColor.init(hexString: "#AFB42B")
            static let lightPrimary =                    UIColor.init(hexString: "#F0F4C3")
            static let primary =                         UIColor.init(hexString: "#CDDC39")
            static let accent =                          UIColor.init(hexString: "#CDDC39")
        }
        enum Lime{
            static let darkPrimary =                           UIColor.init(hexString: "#00796B")
            static let lightPrimary =                          UIColor.init(hexString: "#B2DFDB")
            static let primary =                               UIColor.init(hexString: "#009688")
            static let accent =                                UIColor.init(hexString: "#009688")
        }

        enum Yellow{
            static let darkPrimary =                         UIColor.init(hexString: "#FBC02D")
            static let yellowLightPrimary =                        UIColor.init(hexString: "#FFF9C4")
            static let yellowPrimary =                             UIColor.init(hexString: "#FFEB3B")
            static let yellowAccent =                              UIColor.init(hexString: "#FFEB3B")
        }

        
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
