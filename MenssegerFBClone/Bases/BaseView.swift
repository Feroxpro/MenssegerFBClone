//
//  BaseView.swift
//  BeatifulDay
//
//  Created by Felipe Domingos on 23/03/23.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        // Do nothing
    }
    
    func configureConstraints() {
        // Do nothing
    }
}

