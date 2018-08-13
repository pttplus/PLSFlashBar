//
//  PLSFlashBar.swift
//  PLSFlashBar
//
//  Created by Han-Lin Wang on 2018/8/12.
//

import UIKit

@objcMembers public class PLSFlashBar: UIView {
    
    private static var viewTag = 20180812
    
    public var isShowing: Bool {
        return alpha != 0
    }
    
    public var text: String? {
        didSet {
            textLabel.text = text
        }
    }
    
    public var textColor: UIColor = .white {
        didSet {
            textLabel.textColor = textColor
        }
    }
    
    public var leftImage: UIImage? {
        didSet {
            leftImageView.image = leftImage
        }
    }
    
    public var onTapHandler: (() -> Void)?
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.textColor = textColor
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        return label
    }()
    
    private lazy var leftImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 28).isActive = true
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tag = PLSFlashBar.viewTag
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .darkGray
        alpha = 0 // Def
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func addTo(navigationController: UINavigationController) {
        guard let superView = navigationController.view,
            superView.viewWithTag(PLSFlashBar.viewTag) == nil else {
            return
        }
        let navigationBar = navigationController.navigationBar
        
        superView.addSubview(self)
        leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor).isActive = true
        
        let height: CGFloat = 44
        heightAnchor.constraint(equalToConstant: height).isActive = true
        centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        topAnchor.constraint(equalTo: navigationBar.bottomAnchor).isActive = true
    }
    
    public func show(animated: Bool = true) {
        UIView.animate(withDuration: animated ? 0.25 : 0) {
            self.alpha = 1
        }
    }
    
    public func hide(animated: Bool = true) {
        UIView.animate(withDuration: animated ? 0.25 : 0) {
            self.alpha = 0
        }
    }
    
    @objc private func handleTap() {
        onTapHandler?()
    }
}
