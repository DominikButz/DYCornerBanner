//
//  DYCornerBanner.swift
//  Flat Chat
//
//  Created by Dominik Butz on 10.04.17.
//  Copyright © 2017 Duoyun. All rights reserved.
//

import UIKit

public class DYCornerBanner: UIView {

    /// label used as subview to represent the banner
    var bannerLabel:UILabel = UILabel()
    
    /// the width of the banner  label
    var labelLength: CGFloat = 0.0
    
    /// the banner position
    var bannerPosition: BannerPosition = .bottomRight
   
    /// text of the banner label
    var text:String!
    
    /// color of the banner label text.
    var textColor: UIColor!
    
    
    /// background color of the banner label
    var bannerColor: UIColor!
    

    
    fileprivate let configuration = Configuration()
    
    /// text font, can be overridden
    open var textFont: UIFont {
        get {
            return self.configuration.textFont
        }
        set(font) {
            self.configuration.textFont = font
        }
    }
    
        /// banner width,  can be overridden
    open var bannerWidth: CGFloat {
        get {
            return self.configuration.bannerWidth
        }
        set(width) {
            self.configuration.bannerWidth = width
        }
    }

    

    
    /// This method gets called if you create the view in the Interface Builder
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        print("init decoder")
        
        
  
    }
    
    /// This method gets called if you create the view in code
  public  override init(frame: CGRect){
        super.init(frame: frame)
    print("init in code with frame")
    

    }
    

    
    /// setup - Has to be called on corner banner instance after creating the instance either in code or in the storyboard
    ///
    /// - Parameters:
    ///   - text: Banner label text.
    ///   - textColor: text color.
    ///   - bannerColor: fill colour of the banner label.
    ///   - position: .bottomRight, .topRight, .topLeft or .bottomLeft
    open func setup(text: String, textColor: UIColor, bannerColor: UIColor, position:BannerPosition ) {

        // self
        self.backgroundColor = UIColor.clear
        self.isUserInteractionEnabled = false
        self.clipsToBounds = true

        // setup instance variables
        self.text = text
        self.textColor = textColor
        self.bannerColor = bannerColor
        self.bannerPosition = position
        

        // dummy label for size calculation
//        let sizeAdjustmentLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height / 4.0))
//        sizeAdjustmentLabel.text = text
//        sizeAdjustmentLabel.font = UIFont.systemFont(ofSize: self.bannerWidth)
//        sizeAdjustmentLabel.sizeToFit()
////
        // banner size

       self.labelLength =  sqrt( pow(self.frame.width, 2) +  pow(self.frame.height, 2))


       
    }
    
    
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        let labelFrame = CGRect(x: 0, y: 0, width: self.labelLength, height: self.bannerWidth)
        
        self.bannerLabel = UILabel(frame: labelFrame)
        
        
        //  banner config
        self.bannerLabel.text = self.text
        self.bannerLabel.textAlignment = .center
        self.bannerLabel.baselineAdjustment = .alignCenters
        self.bannerLabel.font = self.textFont
        self.bannerLabel.textColor = self.textColor
        self.bannerLabel.numberOfLines = 1
        self.bannerLabel.lineBreakMode = .byTruncatingTail
        self.bannerLabel.backgroundColor = self.bannerColor
        
        // banner positioning
        var xAdjustment: CGFloat
        var yAdjustment: CGFloat
        let halfLabelHeight: CGFloat  = self.bannerWidth / 2.0
        
        switch self.bannerPosition  {
        case .bottomRight:
            xAdjustment = halfLabelHeight
            yAdjustment = halfLabelHeight
        case .topRight:
            xAdjustment = halfLabelHeight
            yAdjustment = -halfLabelHeight
        case .bottomLeft:
            xAdjustment = -halfLabelHeight
            yAdjustment = halfLabelHeight
        case .topLeft:
            xAdjustment = -halfLabelHeight
            yAdjustment = -halfLabelHeight
            
        }
        
        self.bannerLabel.center = CGPoint(x: self.frame.width / 2.0 + xAdjustment, y: self.frame.height / 2.0 + yAdjustment)
        
        //print("label \(self.bannerLabel)")
        
        
        let sinRotationAngle = self.frame.size.height / self.bannerLabel.frame.size.width
        let arcRotation = asin(sinRotationAngle)
        // print("arc rotation \(arcRotation)")
        
        let rotationAngleFactor = { () -> CGFloat in
            switch self.bannerPosition {
            case .bottomRight, .topLeft:
                return -1.0
            case .bottomLeft, .topRight:
                return 1.0
            }
        }()
        
        let rotation = CGAffineTransform.init(rotationAngle: CGFloat(rotationAngleFactor * arcRotation))
        
        self.bannerLabel.transform = rotation


            self.addSubview(self.bannerLabel)
        
    }

    


}



/// an enum for setting the corner banner position
///
/// - bottomRight:  surprise! bottomRight corner.
/// - topRight: topRight
/// - topLeft: yes, you guessed it: top left corner!
/// - bottomLeft: wow, this one, too!
public enum BannerPosition {
    case bottomRight, topRight, topLeft, bottomLeft
}



fileprivate class Configuration {
    
    var textFont: UIFont!
    var bannerWidth: CGFloat!
    
    init() {
       self.setupDefaults()
    }
    
    /// defaults for bannerWidth (= banner label height) and text font. The properties in the corner label instance can be overridden.
    func setupDefaults() {
        
        self.bannerWidth = 18.0
        self.textFont = UIFont(name: "HelveticaNeue-Medium", size: 10.0)
        
    }
    
    
}
