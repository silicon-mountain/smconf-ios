//
//  Speaker.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/10/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit
import Toucan

struct Speaker {
    let name: String
    let twitter: String
    let image: UIImage
    let bio: String
    let presentation: Presentation
}

extension Speaker {
    
    static let speakers = [rebeccaEnonchong, denisNkweteyim, bermondYange, fritzEkwoge].sort { $0.name < $1.name }
    
    static let rebeccaEnonchong = Speaker(
        name: "Rebecca ENONCHONG",
        twitter: "africatechie",
        image: Toucan(image: UIImage(named: "ashfurrow")!).maskWithEllipse().image,
        bio: isJapanese ? "jp_template" : "Ash Furrow is a Canadian iOS developer and author, currently working at Artsy. He has published four books, built many apps, and is a contributor to the open source community. On his blog, he writes about a range of topics, from interesting programming to explorations of analogue film photography.",
        presentation: Presentation(
            title: isJapanese ? "jp_template" : "An Artsy Testing Tour",
            summary: isJapanese ?
                "jp_template" :
                "Artsy has four iOS applications; all of them are open source, and all of them take different approaches to testing. Why? Because different testing techniques work better or worse in different circumstances. Come hear Ash Furrow discuss the motivations behind the Artsy iOS team's decisions, what struggles they encountered, and how they overcame those challenges. You will leave with a better understanding of when and why testing is important to building fantastic software.")
    )
    
    static let denisNkweteyim = Speaker(
        name: "Dr. Denis NKWETEYIM",
        twitter: "nkweteyim",
        image: Toucan(image: UIImage(named: "caesar")!).maskWithEllipse().image,
        bio: isJapanese ? "jp_template！" : "Caesar Wirth is software engineer at CyberAgent, Inc. where he's made a number of iOS apps involving e-commerce, social networks, and streaming video. Just like Swift is cross-platform, he's also written Android apps and backend servers. When not writing code, you can often find him hiking, bouldering, or scouting out delicious Taco Rice around Tokyo.",
        presentation: Presentation(
            title: isJapanese ? "jp_template" : "Soaring Swiftly - Server Side Swift.",
            summary: isJapanese ? "jp_template" : "Many Mac and iOS apps talk with a back-end server. Now that Swift is open source, we have the opportunity to write those back-end servers in the same language we write our apps in! I'll tell you how to get up and soaring with a server written in Swift!")
    )
    
    static let bermondYange = Speaker(
        name: "Bermond YANGE",
        twitter: "BermondYange",
        image: Toucan(image: UIImage(named: "squires")!).maskWithEllipse().image,
        bio: isJapanese ? "jp_template" : "Jesse is a software developer who works on iOS at Instagram. He writes about Swift and Objective-C on his blog at jessesquires.com, and contributes to many open-source projects on GitHub. He loves running and learning new things, and is fueled primarily by black coffee and black metal.",
        presentation: Presentation(
            title: isJapanese ? "jp_template" : "Contributing to open source Swift",
            summary: isJapanese ? "jp_template" : "Do you want to contribute to Swift? Not sure how or where to begin? It can be overwhelming! In this talk we'll explore the different parts of Swift, see how the various Swift projects are related, discuss the skills you need to get started, and learn the best ways to get your first fix accepted. ")
    )
    
    static let fritzEkwoge = Speaker(
        name: "Fritz EKWOGE",
        twitter: "ekwogefee",
        image: Toucan(image: UIImage(named: "squires")!).maskWithEllipse().image,
        bio: isJapanese ? "jp_template" : "Jesse is a software developer who works on iOS at Instagram. He writes about Swift and Objective-C on his blog at jessesquires.com, and contributes to many open-source projects on GitHub. He loves running and learning new things, and is fueled primarily by black coffee and black metal.",
        presentation: Presentation(
            title: isJapanese ? "jp_template" : "Contributing to open source Swift",
            summary: isJapanese ? "jp_template" : "Do you want to contribute to Swift? Not sure how or where to begin? It can be overwhelming! In this talk we'll explore the different parts of Swift, see how the various Swift projects are related, discuss the skills you need to get started, and learn the best ways to get your first fix accepted. ")
    )
    
    
}
