//
//  Timeslot.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/10/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import Foundation
import Timepiece

struct Session {
    let id: Int
    let startTime: NSDate
    let endTime: NSDate
    let description: String
    let location: String
    let speaker: Speaker?
    
    var timeString: String {
        return "\(startTime.stringFromFormat("H:mm")) - \(endTime.stringFromFormat("H:mm"))"
    }
    
    var dateTimeString: String {
        let format = isJapanese ? "MMMM d H:mm" : "EEEE, H:mm"
        return "\(startTime.stringFromFormat(format)) - \(endTime.stringFromFormat("H:mm"))"
    }
}

extension Session {
    
    static let SeminarRoom13F = isJapanese ? "13F セミナールーム" : "13F Seminar Room"
    static let Breakfast = isJapanese ? "受付・朝食" : "☕️ & Breakfast"
    static let Lunch = isJapanese ? "🍱 ランチ" : "🍱 Lunch"
    static let Coffee = isJapanese ? " ☕️ 休憩" : "☕️ & 🍩 Break"
    static let BreakFastLocation = "Breakfast Location"
    static let BreakFastDescription = "Breakfast"
    static let BadgePickUpLocation = "Badge Pickup Location"
    static let BadgeDescription = "Collection of Badges"
    static let ConferenceHall = "Conference Hall"
    
    static let TOMBOY106 = isJapanese ? "TOMBOY INDIAN LOUNGE DINING 渋谷106道玄坂店" : "TOMBOY INDIAN LOUNGE DINING" // http://www.tomboy106.com/shibuya106/index.html
    
    static let sessionsDay1 = [
        Session(id: 101,
            startTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 7, minute: 00, second: 0),
            endTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 7, minute: 30, second: 0),
            description: BadgeDescription,
            location: BadgePickUpLocation,
            speaker: nil),
        
        Session(id: 102,
            startTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 7, minute: 30, second: 0),
            endTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 9, minute: 00, second: 0),
            description: BreakFastDescription,
            location: BreakFastLocation,
            speaker: nil),
        
        Session(id: 103,
            startTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 9, minute: 00, second: 0),
            endTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 9, minute: 30, second: 0),
            description: "Pre-Keynote Show",
            location: ConferenceHall,
            speaker: nil),
        
        Session(id: 104,
            startTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 9, minute: 30, second: 0),
            endTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 11, minute: 00, second: 0),
            description: "Keynote",
            location: ConferenceHall,
            speaker: nil),
        
        Session(id: 105,
            startTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 11, minute: 00, second: 0),
            endTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 14, minute: 00, second: 0),
            description: "Design Studios",
            location: ConferenceHall,
            speaker: nil),
        
        Session(id: 106,
            startTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 11, minute: 00, second: 0),
            endTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 14, minute: 00, second: 0),
            description: "hackers Sandbox",
            location: ConferenceHall,
            speaker: nil),
        
        Session(id: 107,
            startTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 11, minute: 00, second: 0),
            endTime: NSDate.date(year: 2016, month: 6, day: 18, hour: 14, minute: 00, second: 0),
            description: "Community Pavilion",
            location: ConferenceHall,
            speaker: nil),
        
        Session(id: 120,
            startTime: NSDate.date(year: 2016, month: 3, day: 2, hour: 10, minute: 30, second: 0),
            endTime: NSDate.date(year: 2016, month: 3, day: 2, hour: 10, minute: 55, second: 0),
            description: (isJapanese ? "jp_template" : "Presentation"),
            location: ConferenceHall,
            speaker: Speaker.denisNkweteyim)
    ]
    
    
    
}


