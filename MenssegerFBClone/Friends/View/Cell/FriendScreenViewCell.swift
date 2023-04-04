//
//  FriendScreenViewCell.swift
//  MenssegerFBClone
//
//  Created by Felipe Domingos on 03/04/23.
//

import UIKit

class FriendScreenViewCell: BaseViewCell {
    
    var message: Message? {
        didSet {
            friendName.text = message?.friend?.name
            if let profileImageName = message?.friend?.profileImage {
                profileImage.image = UIImage(named: profileImageName)
            }
            
            friendMessage.text = message?.text
            if let date = message?.date {
                let dateFomatter = DateFormatter()
                dateFomatter.dateFormat = "h:mm a"
                timeLabel.text = dateFomatter.string(from: date as Date)
            }
        }
    }
    
    lazy var cellView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var profileImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "zuckprofile")
        img.layer.cornerRadius = 30
        img.layer.masksToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    lazy var dividerLine: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var friendName: UILabel = {
        let label = UILabel()
        label.text = "Friend Name"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var friendMessage: UILabel = {
        let label = UILabel()
        label.text = "Kaue: Perdao cara, acessaram meu face la no RJ"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.text = " · 12:05 pm."
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var onlineView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.backgroundColor = .systemGreen
        view.layer.borderWidth = 3.0
        view.layer.borderColor = CGColor.init(red: 76, green: 176, blue: 79, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func addSubviews() {
        addSubview(cellView)
        addSubview(profileImage)
        addSubview(onlineView)
        addSubview(dividerLine)
        addSubview(containerView)
        containerView.addSubview(friendName)
        containerView.addSubview(friendMessage)
        containerView.addSubview(timeLabel)
    }
    
    override func configureConstraints() {
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: topAnchor),
            cellView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cellView.trailingAnchor.constraint(equalTo: trailingAnchor),
            cellView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            profileImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            profileImage.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 10),
            profileImage.widthAnchor.constraint(equalToConstant: 58),
            profileImage.heightAnchor.constraint(equalToConstant: 58),
            
            onlineView.bottomAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: -1),
            onlineView.trailingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: -1),
            onlineView.widthAnchor.constraint(equalToConstant: 17),
            onlineView.heightAnchor.constraint(equalToConstant: 17),
            
            dividerLine.heightAnchor.constraint(equalToConstant: 1),
            dividerLine.widthAnchor.constraint(equalToConstant: 300),
            dividerLine.trailingAnchor.constraint(equalTo: trailingAnchor),
            dividerLine.bottomAnchor.constraint(equalTo: cellView.bottomAnchor),
            
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 58),
            containerView.widthAnchor.constraint(equalToConstant: 310),
            
            friendName.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 5),
            friendName.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            
            friendMessage.topAnchor.constraint(equalTo: friendName.bottomAnchor, constant: 5),
            friendMessage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            friendMessage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -90),
            
            timeLabel.topAnchor.constraint(equalTo: friendName.bottomAnchor, constant: 5),
            timeLabel.leadingAnchor.constraint(equalTo: friendMessage.trailingAnchor, constant: 2)
            
        ])
        
    }
}
