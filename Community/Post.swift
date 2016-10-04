//
//  Post.swift
//  Community
//
//  Created by Dan Esrey on 2016/04/10.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import Foundation

class Post {
    
    var datePosted: Date
    var postTitle: String
    var postBody: String
    var postAuthor: Member
    
    init(datePosted: Date, postTitle: String, postBody: String, postAuthor: Member) {
        self.datePosted = datePosted
        self.postTitle = postTitle
        self.postBody = postBody
        self.postAuthor = postAuthor
    }
    
    convenience init?(dictionary: [String: Any]){
        guard  let datePosted = dictionary["datePosted"] as? Date,
        let postTitle = dictionary["postTitle"] as? String,
        let postBody = dictionary["postBody"] as? String,
        let postAuthor = dictionary["postAuthor"] as? Member else {
            return nil
        }
        self.init(datePosted: datePosted, postTitle: postTitle, postBody: postBody, postAuthor: postAuthor)
    } 
}
