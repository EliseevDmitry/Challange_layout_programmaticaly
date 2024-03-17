import UIKit
import SnapKit

class ViewController: UIViewController {
    
    //MARK: - lazy Variable
    
    private lazy var scrollView: UIScrollView = {
        let elementUI = UIScrollView()
        elementUI.isScrollEnabled = true
        elementUI.backgroundColor = K.ScrollView.backgroundColor
        return elementUI
    } ()
    
    private lazy var contentView: UIView = {
        let elementUI = UIView()
        return elementUI
    } ()
    
    private lazy var borderView: UIView = {
        let elementUI = UIView()
        elementUI.backgroundColor = K.BorderView.backgroundColor
        elementUI.layer.masksToBounds = false
        elementUI.layer.cornerRadius = K.BorderView.cornerRadius
        elementUI.layer.shadowRadius = K.BorderView.shadowRadius
        elementUI.layer.shadowOffset = K.BorderView.shadowOffset
        elementUI.layer.shadowOpacity = K.BorderView.shadowOpacity
        elementUI.layer.shadowColor = K.BorderView.shadowColor
        return elementUI
    } ()
    
    private lazy var verticalStack: UIStackView = {
        let elementUI = UIStackView()
        elementUI.axis = K.VerticalStack.axis
        elementUI.alignment = K.VerticalStack.alignment
        elementUI.spacing = K.VerticalStack.spacing
        elementUI.layer.cornerRadius = K.BorderView.cornerRadius
        elementUI.distribution = K.VerticalStack.distribution
        elementUI.clipsToBounds = true
        return elementUI
    } ()
    
    private lazy var horisontalStack: UIStackView = {
        let elementUI = UIStackView()
        elementUI.axis = K.HorisontalStack.axis
        elementUI.distribution = K.HorisontalStack.distribution
        elementUI.alignment = K.HorisontalStack.alignment
        return elementUI
    } ()
    
    private lazy var heartButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(
            systemName: K.HeartButton.imageName
        )
        let elementUI = UIButton(
            configuration: configuration
        )
        elementUI.tintColor = K.HeartButton.color
        return elementUI
    } ()
    
    private lazy var nameLable: UILabel = {
        let elementUI = UILabel()
        elementUI.text = K.NameLable.text
        elementUI.font = K.NameLable.font
        elementUI.textColor = K.NameLable.textColor
        elementUI.textAlignment = K.NameLable.textAlignment
        return elementUI
    } ()
    
    private lazy var multiplyButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(
            systemName: K.MultiplayButton.imageName
        )
        let elementUI = UIButton(
            configuration: configuration
        )
        elementUI.tintColor = K.MultiplayButton.color
        return elementUI
    } ()
    
    private lazy var splineImage: UIImageView = {
        let elementUI = UIImageView()
        elementUI.image = UIImage(
            named: K.SplineImage.imageName
        )
        return elementUI
    } ()
    
    private lazy var fullnameLable: PaddingLabel = {
        let elementUI = PaddingLabel(
            withInsets: K.FullnameLable.Insets,
            K.FullnameLable.Insets,
            K.FullnameLable.Insets,
            K.FullnameLable.Insets
        )
        elementUI.font = K.FullnameLable.font
        elementUI.text = "\(K.FullnameLable.lastName) \(K.FullnameLable.name) \(K.FullnameLable.patronymic)"
        elementUI.backgroundColor = K.FullnameLable.backgroundColor
        elementUI.textColor = K.FullnameLable.textColor
        elementUI.textAlignment = K.FullnameLable.textAlignment
        elementUI.layer.cornerRadius = K.FullnameLable.cornerRadius
        elementUI.clipsToBounds = true
        elementUI.layer.borderWidth = K.FullnameLable.borderWidth
        elementUI.layer.borderColor = K.FullnameLable.borderColor
        elementUI.sizeToFit()
        return elementUI
    } ()
    
    private lazy var astrologicalView: UIView = {
        let elementUI = UIView()
        return elementUI
    } ()
    
    let zodiacButton = UIButton(
        titleName: K.ZodiacButton.title,
        subTitleName: K.ZodiacButton.subtitle,
        titleAligment: K.ZodiacButton.aligment
    )
    let ascendantButton = UIButton(
        titleName: K.AscendantButton.title,
        subTitleName: K.AscendantButton.subtitle,
        titleAligment: K.AscendantButton.aligment
    )
    let elementButton = UIButton(
        titleName: K.ElementButton.title,
        subTitleName: K.ElementButton.subtitle,
        titleAligment: K.ElementButton.aligment
    )
    let colorButton = UIButton(
        titleName: K.ColorButton.title,
        subTitleName: K.ColorButton.subtitle,
        titleAligment: K.ColorButton.aligment
    )
    let stoneButton = UIButton(
        titleName: K.StoneButton.title,
        subTitleName: K.StoneButton.subtitle,
        titleAligment: K.StoneButton.aligment
    )
    let planetButton = UIButton(
        titleName: K.PlanetButton.title,
        subTitleName: K.PlanetButton.subtitle,
        titleAligment: K.PlanetButton.aligment
    )
    
    private lazy var babyImageView: UIImageView = {
        let elementUI = UIImageView()
        elementUI.image = UIImage(
            named: K.BabyImage.imageName
        )
        return elementUI
    } ()
    
    private lazy var horisontalStackCustomsComponents: UIStackView = {
        let elementUI = UIStackView()
        elementUI.axis = K.HorisontalStackCustomsComponents.axis
        elementUI.distribution = K.HorisontalStackCustomsComponents.distribution
        return elementUI
    } ()
    
    private lazy var firstProgressBar: CustomProgressBar = {
        let elementUI = CustomProgressBar.init(
            lable: K.CustomProgressBar.Luck.caption,
            progres: K.CustomProgressBar.Luck.progress
        )
        return elementUI ?? UIView() as! CustomProgressBar
    } ()
    
    private lazy var secondProgressBar: CustomProgressBar = {
        let elementUI = CustomProgressBar.init(
            lable: K.CustomProgressBar.Kindness.caption,
            progres: K.CustomProgressBar.Kindness.progress
        )
        return elementUI ?? UIView() as! CustomProgressBar
    } ()
    
    private lazy var thirdProgressBar: CustomProgressBar = {
        let elementUI = CustomProgressBar.init(
            lable: K.CustomProgressBar.Mind.caption,
            progres: K.CustomProgressBar.Mind.progress
        )
        return elementUI ?? UIView() as! CustomProgressBar
    } ()
    
    private lazy var firstTextBlock: CustomTextBlock = {
        let elementUI = CustomTextBlock(
            caption: K.FirstTextBlock.caption,
            text: K.FirstTextBlock.text,
            textAligment: K.FirstTextBlock.aligment
        )
        return elementUI ?? UIView() as! CustomTextBlock
    } ()
    
    private lazy var secondTextBlock: CustomTextBlock = {
        let elementUI = CustomTextBlock(
            caption: K.SecondTextBlock.caption,
            text: K.SecondTextBlock.text,
            textAligment: K.SecondTextBlock.aligment
        )
        return elementUI ?? UIView() as! CustomTextBlock
    } ()
    
    private lazy var thirdTextBlock: CustomTextBlock = {
        let elementUI = CustomTextBlock(
            caption: K.ThirdTextBlock.caption,
            text: K.ThirdTextBlock.text,
            textAligment: K.ThirdTextBlock.aligment
        )
        return elementUI ?? UIView() as! CustomTextBlock
    } ()
    
    private lazy var bearImage: UIImageView = {
        let elementUI = UIImageView()
        let bearImage = UIImage(
            named: K.ImagesInterface.bearImage
        )
        elementUI.image = bearImage
        return elementUI
    } ()
    
    private lazy var starsImage: UIImageView = {
        let elementUI = UIImageView()
        let starsImage = UIImage(
            named: K.ImagesInterface.starsImage
        )
        elementUI.image = starsImage
        return elementUI
    } ()
    
    private lazy var duckImage: UIImageView = {
        let elementUI = UIImageView()
        let duckImage = UIImage(
            named: K.ImagesInterface.duckImage
        )
        elementUI.image = duckImage
        return elementUI
    } ()
    
    let characterTraitsLable = UILabel(
        text: K.CustomProgressBar.characterTraits
    )
    
    //MARK: - Functions life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        heightPriority()
        setupConstraints()
    }
    
    //MARK: - Functions
    
    //Realisation scrollView with UILayoutPriority
    
    func heightPriority(){
        let heightConst = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        heightConst.isActive = true
        heightConst.priority = UILayoutPriority(50)
    }
    
    func setupViews(){
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(borderView)
        borderView.addSubview(verticalStack)
        verticalStack.addArrangedSubview(horisontalStack)
        horisontalStack.addArrangedSubview(heartButton)
        horisontalStack.addArrangedSubview(nameLable)
        horisontalStack.addArrangedSubview(multiplyButton)
        verticalStack.addArrangedSubview(splineImage)
        verticalStack.addArrangedSubview(fullnameLable)
        verticalStack.addArrangedSubview(astrologicalView)
        astrologicalView.addSubview(babyImageView)
        astrologicalView.addSubview(zodiacButton)
        astrologicalView.addSubview(ascendantButton)
        astrologicalView.addSubview(elementButton)
        astrologicalView.addSubview(colorButton)
        astrologicalView.addSubview(stoneButton)
        astrologicalView.addSubview(planetButton)
        verticalStack.addArrangedSubview(characterTraitsLable)
        verticalStack.addArrangedSubview(horisontalStackCustomsComponents)
        horisontalStackCustomsComponents.addArrangedSubview(firstProgressBar)
        horisontalStackCustomsComponents.addArrangedSubview(secondProgressBar)
        horisontalStackCustomsComponents.addArrangedSubview(thirdProgressBar)
        verticalStack.addArrangedSubview(firstTextBlock)
        verticalStack.addArrangedSubview(secondTextBlock)
        verticalStack.addArrangedSubview(thirdTextBlock)
        contentView.addSubview(bearImage)
        contentView.addSubview(starsImage)
        contentView.addSubview(duckImage)
    }
}

//MARK: - EXTENSION VIEWCONTROLLER (Constraints)

extension ViewController {
    private func setupConstraints() {
        scrollView.snp.makeConstraints { make in
            make.leading.top.trailing.bottom.equalTo(self.view).inset(0)
        }
        
        contentView.snp.makeConstraints { make in
            make.leading.top.trailing.bottom.equalTo(scrollView).inset(0)
            make.width.equalTo(scrollView.snp.width)
        }
        
        borderView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp_topMargin).offset(0)
            make.leading.trailing.equalTo(contentView).inset(K.BorderView.leftAndRightInsets)
            make.bottom.equalTo(contentView.snp_bottomMargin)
        }
        
        verticalStack.snp.makeConstraints { make in
            make.leading.trailing.equalTo(borderView).offset(0)
            make.top.equalTo(borderView).inset(K.VerticalStack.topInsets)
        }
        
        horisontalStack.snp.makeConstraints { make in
            make.leading.trailing.equalTo(verticalStack).inset(K.HorisontalStack.leftAndRightInsets)
            make.height.equalTo(K.HorisontalStack.height)
        }
        
        heartButton.snp.makeConstraints { make in
            make.leading.equalTo(horisontalStack).offset(0)
            make.width.height.equalTo(K.HeartButton.size.width)
        }
        
        multiplyButton.snp.makeConstraints { make in
            make.trailing.equalTo(horisontalStack).offset(0)
            make.width.height.equalTo(K.MultiplayButton.size.width)
        }
        
        splineImage.snp.makeConstraints { make in
            make.centerXWithinMargins.equalTo(verticalStack)
            make.height.equalTo(K.SplineImage.height)
        }
        
        astrologicalView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(verticalStack).inset(K.Astrological.leftAndRightInsets)
            make.height.equalTo(K.Astrological.height)
        }
        
        zodiacButton.snp.makeConstraints { make in
            make.leading.top.equalTo(astrologicalView).offset(0)
        }
        
        ascendantButton.snp.makeConstraints { make in
            make.trailing.top.equalTo(astrologicalView).offset(0)
        }
        
        elementButton.snp.makeConstraints { make in
            make.leading.equalTo(astrologicalView).offset(0)
            make.centerYWithinMargins.equalTo(astrologicalView.snp_centerYWithinMargins)
        }
        
        colorButton.snp.makeConstraints { make in
            make.trailing.equalTo(astrologicalView).offset(0)
            make.centerYWithinMargins.equalTo(astrologicalView.snp_centerYWithinMargins)
        }
        
        stoneButton.snp.makeConstraints { make in
            make.leading.bottom.equalTo(astrologicalView).offset(0)
        }
        
        planetButton.snp.makeConstraints { make in
            make.trailing.bottom.equalTo(astrologicalView).offset(0)
        }
        
        babyImageView.snp.makeConstraints { make in
            make.width.equalTo(K.BabyImage.size.width)
            make.height.equalTo(K.BabyImage.size.height)
            make.centerWithinMargins.equalTo(astrologicalView.snp_centerWithinMargins)
        }
        
        characterTraitsLable.snp.makeConstraints { make in
            make.leading.trailing.equalTo(verticalStack).offset(0)
            make.centerXWithinMargins.equalTo(verticalStack.snp_centerXWithinMargins)
        }
        
        horisontalStackCustomsComponents.snp.makeConstraints { make in
            make.leading.trailing.equalTo(verticalStack).inset(K.HorisontalStackCustomsComponents.leftAndRightInsets)
            make.centerXWithinMargins.equalTo(verticalStack.snp_centerXWithinMargins)
        }
        
        firstProgressBar.snp.makeConstraints { make in
            make.width.equalTo(K.ProgressBar.size.width)
            make.height.equalTo(K.ProgressBar.size.height)
        }
        
        secondProgressBar.snp.makeConstraints { make in
            make.width.equalTo(K.ProgressBar.size.width)
            make.height.equalTo(K.ProgressBar.size.height)
        }
        
        thirdProgressBar.snp.makeConstraints { make in
            make.width.equalTo(K.ProgressBar.size.width)
            make.height.equalTo(K.ProgressBar.size.height)
        }
        
        firstTextBlock.snp.makeConstraints { make in
            make.leading.trailing.equalTo(verticalStack).inset(K.TextBlock.leftAndRightInsets)
            make.centerXWithinMargins.equalTo(verticalStack.snp_centerXWithinMargins)
        }
        
        secondTextBlock.snp.makeConstraints { make in
            make.leading.trailing.equalTo(verticalStack).inset(K.TextBlock.leftAndRightInsets)
            make.centerXWithinMargins.equalTo(verticalStack.snp_centerXWithinMargins)
        }
        
        thirdTextBlock.snp.makeConstraints { make in
            make.leading.trailing.equalTo(verticalStack).inset(K.TextBlock.leftAndRightInsets)
            make.centerXWithinMargins.equalTo(verticalStack.snp_centerXWithinMargins)
            make.bottom.equalTo(contentView.snp_bottomMargin).inset(K.TextBlock.demensionToBottom)
        }
        
        bearImage.snp.makeConstraints { make in
            make.leading.bottom.equalTo(contentView).offset(0)
            make.height.width.equalTo(K.ImagesInterface.size.height)
        }
        
        starsImage.snp.makeConstraints { make in
            make.trailing.equalTo(contentView).offset(0)
            make.height.width.equalTo(K.ImagesInterface.size.height)
            make.top.equalTo(thirdTextBlock.captionLable.snp_topMargin).offset(K.ImagesInterface.starsOffset)
        }
        
        duckImage.snp.makeConstraints { make in
            make.leading.equalTo(contentView).offset(0)
            make.height.width.equalTo(K.ImagesInterface.size.height)
            make.top.equalTo(secondTextBlock.captionLable.snp_topMargin).offset(K.ImagesInterface.duckOffset)
        }
    }
}



