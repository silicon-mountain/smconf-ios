//
//  SessionTableViewCell.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/10/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit

class SessionTableViewCell: UITableViewCell {

    @IBOutlet weak var sessionTitleLabel: UILabel!
    @IBOutlet weak var speakerImageView: UIImageView!
    @IBOutlet weak var speakerNameLabel: UILabel!
    @IBOutlet weak var sessionTypeLabel: UILabel!
    @IBOutlet weak var sessionLocationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        sessionTitleLabel.textColor = .trySwiftTitleColor()
        sessionTypeLabel.textColor = .trySwiftTitleColor()
        speakerNameLabel.textColor = .trySwiftSubtitleColor()
        sessionLocationLabel.textColor = .trySwiftSubtitleColor()
        sessionTitleLabel.clipsToBounds = false
    }

    func configure(withSession session: Session) {
        if let speaker = session.speaker {
            sessionTitleLabel.text = speaker.presentation.title
            speakerImageView.image = speaker.image
            speakerNameLabel.text = speaker.name
            sessionTypeLabel.text = session.description
            accessoryType = .DisclosureIndicator
            selectionStyle = .Default
        } else {
            // coffee / tea / opening announcements
            sessionTitleLabel.text = session.description
            speakerImageView.image = UIImage.trySwiftDefaultImage
            speakerNameLabel.text = "SMConf2016"
            if #available(iOS 9.2, *) {
                sessionTypeLabel.text = "🤗"
            } else {
                sessionTypeLabel.text = "🐥"
            }

            if session.id == 319 {  // TOMBOY106
                accessoryType = .DisclosureIndicator
                selectionStyle = .Default
            } else {
                accessoryType = .None
                selectionStyle = .None
            }
        }
        
        sessionLocationLabel.text = session.location
        setNeedsUpdateConstraints()
        layoutIfNeeded()
    }
}


