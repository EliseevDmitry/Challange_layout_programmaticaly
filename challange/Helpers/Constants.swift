//
//  Constants.swift
//  challange
//
//  Created by Dmitriy Eliseev on 19.11.2023.
//

import UIKit

struct K {
    
    struct ScrollView {
        static let backgroundColor = UIColor.white
    }
    
    struct BorderView {
        static let backgroundColor = UIColor.white
        static let cornerRadius:CGFloat = 10
        static let shadowRadius:CGFloat = 6
        static let shadowColor = UIColor(hex: "E3B3B0", alpha: 1)?.cgColor
        static let shadowOffset = CGSize(width: 0, height: 0)
        static let shadowOpacity:Float = 1.0
        static let leftAndRightInsets:CGFloat = 10
    }
    
    struct VerticalStack {
        static let axis:NSLayoutConstraint.Axis = .vertical
        static let alignment:UIStackView.Alignment = .center
        static let spacing:CGFloat = 14
        static let distribution: UIStackView.Distribution = .fill
        static let topInsets:CGFloat = 16
    }
    
    struct HorisontalStack {
        static let axis:NSLayoutConstraint.Axis = .horizontal
        static let alignment:UIStackView.Alignment = .lastBaseline
        static let distribution: UIStackView.Distribution = .fillProportionally
        static let leftAndRightInsets:CGFloat = 22
        static let height:CGFloat = 31
    }
    
    struct NameLable {
        static let text = "Борис"
        static let font = UIFont.systemFont(ofSize: 28)
        static let textColor = UIColor(hex: "BA7171", alpha: 1)
        static let textAlignment:NSTextAlignment = .center
    }
    
    struct HeartButton {
        static let color = UIColor(hex: "FBC7C4", alpha: 1)
        static let imageName = "suit.heart"
        static let size = CGSize(width: 25, height: 25)
    }
    
    struct MultiplayButton {
        static let color = UIColor(hex: "DE9C9C", alpha: 1)
        static let imageName = "multiply"
        static let size = CGSize(width: 25, height: 25)
    }
    
    struct FullnameLable {
        static let lastName = "Ковальчук"
        static let name = "Борис"
        static let patronymic = "Федорович"
        static let textColor = UIColor(hex: "BA7171", alpha: 1)
        static let textAlignment:NSTextAlignment = .center
        static let borderColor = UIColor(hex: "FBC7C4", alpha: 1)?.cgColor
        static let backgroundColor = UIColor.white
        static let font = UIFont.systemFont(ofSize: 21)
        static let cornerRadius:CGFloat = 12
        static let borderWidth:CGFloat = 2
        static let Insets:CGFloat = 10
    }
    
    struct SplineImage {
        static let imageName = "spline"
        static let height:CGFloat = 5
    }
    
    struct Astrological {
        static let leftAndRightInsets:CGFloat = 28
        static let height:CGFloat = 200
    }
    
    struct ButtonExtension {
        static let titleColor = UIColor(hex: "BA7171", alpha: 1)
        static let subTitleColor = UIColor(hex: "313131", alpha: 1)
        static let titlesFont = UIFont.systemFont(ofSize: 14)
        static let titlePadding: CGFloat = 3
    }
    
    struct ZodiacButton {
        static let title = "Знак зодиака"
        static let subtitle = "Скорпион"
        static let aligment: UIButton.Configuration.TitleAlignment = .leading
    }
    
    struct AscendantButton {
        static let title = "Асцендент"
        static let subtitle = "Дева"
        static let aligment: UIButton.Configuration.TitleAlignment = .trailing
    }
    
    struct ElementButton {
        static let title = "Стихия"
        static let subtitle = "Вода"
        static let aligment: UIButton.Configuration.TitleAlignment = .leading
    }
    
    struct ColorButton {
        static let title = "Цвет"
        static let subtitle = "Синий"
        static let aligment: UIButton.Configuration.TitleAlignment = .trailing
    }
    
    struct StoneButton {
        static let title = "Камень"
        static let subtitle = "Синий опал"
        static let aligment: UIButton.Configuration.TitleAlignment = .leading
    }
    
    struct PlanetButton {
        static let title = "Планета"
        static let subtitle = "Меркурий"
        static let aligment: UIButton.Configuration.TitleAlignment = .trailing
    }
    
    struct BabyImage {
        static let imageName = "baby"
        static let size:CGSize = CGSize(width: 145, height: 131.3)
    }
    
    struct HorisontalStackCustomsComponents {
        static let axis:NSLayoutConstraint.Axis = .horizontal
        static let distribution: UIStackView.Distribution = .equalCentering
        static let leftAndRightInsets:CGFloat = 32
    }
    
    struct LablesText {
        static let textColor = UIColor(hex: "BA7171", alpha: 1)
        static let textFont = UIFont.systemFont(ofSize: 18)
        static let aligment: NSTextAlignment = .center
    }
    
    struct CustomProgressBar {
        static let characterTraits = "Черты характера"
        struct Luck {
            static let caption = "Удача"
            static let progress:Float = 0.7
        }
        struct Kindness {
            static let caption = "Доброта"
            static let progress:Float = 0.2
        }
        struct Mind {
            static let caption = "Ум"
            static let progress:Float = 0.9
        }
    }

    struct FirstTextBlock {
        static let caption = "Описание"
        static let text = "Согласно проведенному анализу расположения звезд в день рождения вашего ребенка и благозвучных имен к отчеству Федорович, наиболее подходящим именем станет Борис. Если вы решите назвать своего малыша Борис, то данное имя одарит его не только врожденными талантами и острым умом, но и сильной волей."
        static let aligment: NSTextAlignment = .left
    }
    
    struct SecondTextBlock {
        static let caption = "Астрология"
        static let text = "Благодаря исследованию ваших дат рождения и дня появления на свет вашего сына Овен, рожденный в год Серебряного Быка под именем Борис по-настоящему счастливый человек, ведь он способен воплотить в реальность даже самые невероятные свои идеи."
        static let aligment: NSTextAlignment = .justified
    }
    
    struct ThirdTextBlock {
        static let caption = "Значение имени"
        static let text = "Борис с юного возраста проявляет любознательность и оптимизм в отношении жизненных трудностей – за него вам точно не придется переживать, потому что врожденный сильный характер не позволит ему сломаться ни перед какими трудностями."
        static let aligment: NSTextAlignment = .justified
    }
    
    struct ImagesInterface {
        static let duckImage = "duck"
        static let duckOffset = -120
        static let starsImage = "stars"
        static let starsOffset = -110
        static let bearImage = "bear"
        static let size:CGSize = CGSize(width: 150, height: 150)
        
    }
    
    struct ProgressBar {
        static let heightBetweenCaptionAndProgress:CGFloat = 8
        static let heightProgressBar:CGFloat = 5
        static let heightBetweenProgressAndStatus:CGFloat = 4
        static let size:CGSize = CGSize(width: 80, height: 57)
        struct Caption {
            static let textColor = UIColor(hex: "BA7171", alpha: 1)
            static let textFont = UIFont.systemFont(ofSize: 15)
        }
        struct Progress {
            static let trackTintColor = UIColor(hex: "fae2e2", alpha: 1)
            static let progressTintColor = UIColor(hex: "F6A0A0", alpha: 1)
        }
        struct Status {
            static let textColor = UIColor(hex: "DE9C9C", alpha: 1)
            static let textFont = UIFont.systemFont(ofSize: 15)
        }
    }
    
    struct TextBlock {
        static let heightBetweenCaptionAndElements:CGFloat = 20
        static let heightBetweenCaptionAndText:CGFloat = 12
        static let leftAndRightInsets:CGFloat = 35
        static let demensionToBottom:CGFloat = 40
        struct Text {
            static let textColor = UIColor.black
            static let textFont = UIFont.systemFont(ofSize: 15)
            static let numberOfLines: Int = 0
        }
    }
}
