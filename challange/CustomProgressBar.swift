//
//  CastomProgressBar.swift
//  challange
//
//  Created by Dmitriy Eliseev on 25.11.2023.
//

import UIKit

class CustomProgressBar: UIView {
    
    //MARK: - Constants
    
    let captionLable: UILabel = {
        let elementUI = UILabel()
        elementUI.textColor = K.ProgressBar.Caption.textColor
        elementUI.font = K.ProgressBar.Caption.textFont
        elementUI.translatesAutoresizingMaskIntoConstraints = false
        return elementUI
    } ()
    
    let progressBar: UIProgressView = {
        let elementUI = UIProgressView()
        elementUI.trackTintColor = K.ProgressBar.Progress.trackTintColor
        elementUI.progressTintColor = K.ProgressBar.Progress.progressTintColor
        elementUI.translatesAutoresizingMaskIntoConstraints = false
        return elementUI
    } ()
    
    let statusLable: UILabel = {
        let elementUI = UILabel()
        elementUI.textColor = K.ProgressBar.Status.textColor
        elementUI.font = K.ProgressBar.Status.textFont
        elementUI.translatesAutoresizingMaskIntoConstraints = false
        return elementUI
    } ()
    
    //MARK: - Life cycle functions
    
    required override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        addSubview(captionLable)
        addSubview(progressBar)
        addSubview(statusLable)
    }
    
    public convenience init?(lable: String, progres: Float) {
        self.init(frame: CGRect.zero)
        self.captionLable.text = lable
        self.progressBar.progress = progres
        self.statusLable.text = "\(Int(progres*10)) / 10"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        captionLable.topAnchor.constraint(
            equalTo: self.topAnchor,
            constant: 0
        ).isActive = true
        captionLable.leadingAnchor.constraint(
            equalTo: self.leadingAnchor,
            constant: 0
        ).isActive = true
        progressBar.topAnchor.constraint(
            equalTo: captionLable.bottomAnchor,
            constant: K.ProgressBar.heightBetweenCaptionAndProgress
        ).isActive = true
        progressBar.centerXAnchor.constraint(
            equalTo: self.centerXAnchor,
            constant: 0
        ).isActive = true
        progressBar.leadingAnchor.constraint(
            equalTo: self.leadingAnchor
        ).isActive = true
        progressBar.trailingAnchor.constraint(
            equalTo: self.trailingAnchor
        ).isActive = true
        progressBar.heightAnchor.constraint(
            equalToConstant: K.ProgressBar.heightProgressBar
        ).isActive = true
        statusLable.topAnchor.constraint(
            equalTo: progressBar.bottomAnchor,
            constant: K.ProgressBar.heightBetweenProgressAndStatus
        ).isActive = true
        statusLable.leadingAnchor.constraint(
            equalTo: progressBar.leadingAnchor,
            constant: 0
        ).isActive = true
    }
}
