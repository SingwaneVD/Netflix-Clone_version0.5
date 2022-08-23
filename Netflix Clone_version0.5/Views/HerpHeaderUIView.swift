//
//  HerpHeaderUIView.swift
//  Netflix Clone_version0.5
//
//  Created by IACD-024 on 2022/08/09.
//

import UIKit

class HerpHeaderUIView: UIView {
    
    private let downloadButton: UIButton = {
       let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    

    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)

        button.layer.cornerRadius = 5
        return button
    }()
    
    
    private let heroImageView: UIImageView = {
        
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
        
    }()
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyConstraints()
       
        
    }
    private func applyConstraints(){
        let playButtonConstraints = [//positioning the play button
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            playButton.widthAnchor.constraint(equalToConstant: 150)
        
        ]
        let downloadButtonConstraints = [
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -25),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            downloadButton.widthAnchor.constraint(equalToConstant: 150)
        ]
        
        NSLayoutConstraint.activate(playButtonConstraints)
        
       NSLayoutConstraint.activate(downloadButtonConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
