//
//  Organizer.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/12/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit
import Toucan

struct Organizer {
    let name: String
    let twitter: String
    let image: UIImage
}

extension Organizer {

    static let organizers = [natasha, kk,mukete]

    static let natasha = Organizer(
        name: isJapanese ? "ナターシャ ザ ロボット" : "Natasha Murashev",
        twitter: "NatashaTheRobot",
        image: Toucan(image: UIImage(named: "natasha")!).maskWithEllipse().image
    )

    static let kk = Organizer(
        name: isJapanese ? "岸川克己" : "Kishikawa Katsumi",
        twitter: "k_katsumi",
        image: Toucan(image: UIImage(named: "kk")!).maskWithEllipse().image
    )

    static let mukete = Organizer(
        name: "william a. f . mukete",
        twitter: "mvkete",
        image: Toucan(image: UIImage(named: "vaish")!).maskWithEllipse().image
    )

    

    static let trySwift = Organizer(
        name: "SMConf2016",
        twitter: "tryswiftconf",
        image: Toucan(image: UIImage(named: "logo")!).maskWithEllipse().image
    )
}
