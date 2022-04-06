//
//  CommentService.swift
//  instaClone
//
//  Created by elliott chavis on 4/5/22.
//

import Firebase

struct CommentService {
    static func uploadComment(comment: String, postID: String, user: User, completion: @escaping(FirestoreCompletion)) {
        
        let data: [String: Any] = ["uid": user.uid,
                                   "comment": comment,
                                   "timestamp": Timestamp(date: Date()),
                                   "username": user.username,
                                   "profileImageUrl": user.profileImageUrl]
        
        print("The user ID is:   \(user)")
        
        COLLECTION_POSTS.document(postID).collection("comments").addDocument(data: data, completion: completion )
    }
    
    static func fetchComments() {
        
    }
}
