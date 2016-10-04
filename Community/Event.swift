//
//  Event.swift
//  Community
//
//  Created by Dan Esrey on 2016/04/10.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import Foundation


class Event {
    
    public var eventName: String
    public var eventDate: Date
    public var eventLocation: String
    public var eventTime: Date
    public var eventDescription: String
    public var eventOrganizer: Member
    public var eventAttendees: [Member]
    
    init(eventName: String, eventDate: Date, eventLocation: String, eventTime: Date, eventDescription: String, eventOrganizer: Member, eventAttendees: [Member]){
        self.eventName = eventName
        self.eventDate = eventDate
        self.eventLocation = eventLocation
        self.eventTime = eventTime
        self.eventDescription = eventDescription
        self.eventOrganizer = eventOrganizer
        self.eventAttendees = eventAttendees
    }
    
    convenience init?(dictionary: [String: Any]){
        guard  let eventName = dictionary["eventName"] as? String,
        let eventDate = dictionary["eventDate"] as? Date,
        let eventLocation = dictionary["eventLocation"] as? String,
        let eventTime = dictionary["eventTime"] as? Date,
        let eventDescription = dictionary["eventDesctiption"] as? String,
        let eventOrganizer = dictionary["eventOrganizer"] as? Member,
        let eventAttendees = dictionary["eventAttendees"] as? [Member] else {
            return nil
        }
        self.init(eventName: eventName, eventDate: eventDate, eventLocation: eventLocation, eventTime: eventTime, eventDescription: eventDescription, eventOrganizer: eventOrganizer, eventAttendees: eventAttendees)
    }
}
