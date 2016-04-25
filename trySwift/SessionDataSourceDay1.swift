//
//  SessionDataSourceDay1.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/10/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

struct SessionDataSourceDay1: SessionDataSourceProtocol {
    var header = isJapanese ? "jp_template）" : "Wed, Jun 18"
    var sessions = Session.sessionsDay1
}
