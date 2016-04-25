//
//  QASession.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/11/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import Foundation
import Timepiece

struct QASession {
    let id: Int
    let startTime: NSDate
    let endTime: NSDate
    let speakers: [Speaker]
    let location: String
    
    var title: String {
        let speakerNames = speakers.map { $0.name }
        
        return "Q&A with \(speakerNames[0]), \(speakerNames[1]), & \(speakerNames[2])"
    }
}

extension QASession {
    
    static let SeminarRoom17F = isJapanese ? "jp_template" : "17F Seminar Room"
    
    static let qaSessionsDay1 = [
        QASession(
            id: 511,
            startTime: NSDate.date(year: 2016, month: 3, day: 2, hour: 11, minute: 30, second: 0),
            endTime: NSDate.date(year: 2016, month: 3, day: 2, hour: 12, minute: 55, second: 0),
            speakers: [Speaker.denisNkweteyim, Speaker.fritzEkwoge],
            location: SeminarRoom17F
        ),
        QASession(
            id: 512,
            startTime: NSDate.date(year: 2016, month: 3, day: 2, hour: 14, minute: 30, second: 0),
            endTime: NSDate.date(year: 2016, month: 3, day: 2, hour: 15, minute: 55, second: 0),
            speakers: [Speaker.rebeccaEnonchong],
            location: SeminarRoom17F
        )
    ]
    
    
    
    
}