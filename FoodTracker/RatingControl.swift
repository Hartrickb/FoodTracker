//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Bennett Hartrick on 12/5/16.
//  Copyright © 2016 Bennett. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    var rating = 0
    var ratingButtons = [UIButton]()
    
    // MARK: Initialization
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing
        for (index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<5 {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.red
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
            ratingButtons += [button]
            addSubview(button)
        }
        
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
}