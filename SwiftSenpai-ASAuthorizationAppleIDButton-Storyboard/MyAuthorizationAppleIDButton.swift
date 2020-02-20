//
//  MyAuthorizationAppleIDButton.swift
//  SwiftSenpai-ASAuthorizationAppleIDButton-Storyboard
//
//  Created by Lee Kah Seng on 20/02/2020.
//  Copyright © 2020 Lee Kah Seng. All rights reserved.
//

import UIKit
import AuthenticationServices

@IBDesignable
class MyAuthorizationAppleIDButton: UIButton {

    private var authorizationButton: ASAuthorizationAppleIDButton!
    
    @IBInspectable
    var cornerRadius: CGFloat = 6.0
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)

        // Create ASAuthorizationAppleIDButton
        authorizationButton = ASAuthorizationAppleIDButton(authorizationButtonType: .default, authorizationButtonStyle: .black)
        authorizationButton.cornerRadius = cornerRadius

        // Disable user interaction so that it won't hijack the tap gesture towards MyAuthorizationAppleIDButton
        authorizationButton.isUserInteractionEnabled = false

        // Show authorizationButton
        addSubview(authorizationButton)

        // Use autolayout to make authorizationButton follow the MyAuthorizationAppleIDButton's dimension
        authorizationButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            authorizationButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 0.0),
            authorizationButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0.0),
            authorizationButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0.0),
            authorizationButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0.0),
        ])
    }

}
