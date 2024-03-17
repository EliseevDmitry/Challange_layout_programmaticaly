//
//  CastomTextBlock.swift
//  challange
//
//  Created by Dmitriy Eliseev on 13.03.2024.
//

import UIKit

class CustomTextBlock: UIView {

    //MARK: - Constants
    
    let captionLable: UILabel = {
        let elementUI = UILabel()
        elementUI.textColor = K.LablesText.textColor
        elementUI.font = K.LablesText.textFont
        elementUI.translatesAutoresizingMaskIntoConstraints = false
        return elementUI
    } ()
    let textLable: UILabel = {
        let elementUI = UILabel()
        elementUI.textColor = K.TextBlock.Text.textColor
        elementUI.font = K.TextBlock.Text.textFont
        elementUI.numberOfLines = K.TextBlock.Text.numberOfLines
        elementUI.translatesAutoresizingMaskIntoConstraints = false
        return elementUI
    } ()
    
    //MARK: - Life cycle functions
    
    required override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        addSubview(captionLable)
        addSubview(textLable)
    }
    
    public convenience init?(caption: String, text: String, textAligment: NSTextAlignment) {
        self.init(
            frame: CGRect.zero
        )
        self.captionLable.text = caption
        self.textLable.textAlignment = textAligment
        self.textLable.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        captionLable.topAnchor.constraint(
            equalTo: self.topAnchor,
            constant: K.TextBlock.heightBetweenCaptionAndElements
        ).isActive = true
        captionLable.centerXAnchor.constraint(
            equalTo: self.centerXAnchor,
            constant: 0
        ).isActive = true
        textLable.topAnchor.constraint(
            equalTo: captionLable.bottomAnchor,
            constant: K.TextBlock.heightBetweenCaptionAndText
        ).isActive = true
        textLable.leadingAnchor.constraint(
            equalTo: self.leadingAnchor,
            constant: 0
        ).isActive = true
        textLable.trailingAnchor.constraint(
            equalTo: self.trailingAnchor,
            constant: 0
        ).isActive = true
        textLable.bottomAnchor.constraint(
            equalTo: self.bottomAnchor
        ).isActive = true
    }
}
