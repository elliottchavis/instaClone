//
//  NotificationViewModel.swift
//  instaClone
//
//  Created by elliott chavis on 4/11/22.
//

import UIKit

struct NotificationViewModel {
    private let notification: Notification
    
    init(notification: Notification) {
        self.notification = notification
    }
    
    var postImageUrl: URL? { return URL(string: notification.postImageUrl ?? "")}
    var profileImageUrl: URL? { return URL(string: notification.userProfileImageUrl ?? "")}
    
    
}
