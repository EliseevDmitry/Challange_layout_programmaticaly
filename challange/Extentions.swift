//
//  Extentions.swift
//  challange
//
//  Created by Dmitriy Eliseev on 17.03.2024.
//

import UIKit

extension UIColor {
    public convenience init?(hex: String, alpha: Double) {
        var pureString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (pureString.hasPrefix("#")) {
            pureString.remove(at: pureString.startIndex)
        }
        if ((pureString.count) != 6) {
            return nil
        }
        let scanner = Scanner(string: pureString)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            self.init(
                red: CGFloat((hexNumber & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((hexNumber & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(hexNumber & 0x0000FF) / 255.0,
                alpha: CGFloat(alpha))
            return
        }
        return nil
    }
}

extension UIButton {
    convenience init(titleName: String, subTitleName: String, titleAligment: UIButton.Configuration.TitleAlignment) {
        self.init(type: .system)
        var configuration = UIButton.Configuration.plain()
        configuration.title = titleName
        configuration.subtitle = subTitleName
        configuration.attributedTitle?.font = K.ButtonExtension.titlesFont
        configuration.attributedSubtitle?.font = K.ButtonExtension.titlesFont
        configuration.titlePadding = K.ButtonExtension.titlePadding
        configuration.titleAlignment = titleAligment
        self.configuration = configuration
        self.tintColor = K.ButtonExtension.titleColor
        self.subtitleLabel?.tintColor = K.ButtonExtension.subTitleColor
    }
}

extension UILabel {
    convenience init(text: String){
        self.init()
        self.text = text
        self.textColor = K.LablesText.textColor
        self.font = K.LablesText.textFont
        self.textAlignment = K.LablesText.aligment
    }
}

extension UILabel {
    func retrieveTextHeight () -> CGFloat {
        let attributedText = NSAttributedString(
            string: self.text!,
            attributes: [NSAttributedString.Key.font:self.font as Any]
        )
        let rect = attributedText.boundingRect(
            with: CGSize(width: self.frame.size.width,
                         height: CGFloat.greatestFiniteMagnitude),
            options: .usesLineFragmentOrigin,
            context: nil
        )
        return ceil(
            rect.size.height
        )
    }
}
