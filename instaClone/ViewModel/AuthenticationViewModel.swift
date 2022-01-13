//
//  AuthenticationViewModel.swift
//  instaClone
//
//  Created by elliott chavis on 1/8/22.
//

import UIKit

protocol FormViewModel {
    func updateForm()
}

protocol AuthenticationViewModel {
    var formIsValid: Bool {get}
    var buttonBackgroundColor: UIColor {get}
    var buttonTitleColor: UIColor {get}
}

class LoginViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    
    //var passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.{8,})$")
    
    var length = 0
    
    
    var formIsValid: Bool {
        length = password?.count ?? 0
        return email?.isEmpty == false && password?.isEmpty == false && length > 7
    }
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ? #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1) : #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
}

class RegistrationViewModel: AuthenticationViewModel {
    
    var email: String?
    var password: String?
    var username: String?
    var fullname: String?
    
    var length = 0

    
    var formIsValid: Bool {
        length = password?.count ?? 0
        return email?.isEmpty == false && password?.isEmpty == false && length > 7
    }
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ? #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1) : #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
    
}
