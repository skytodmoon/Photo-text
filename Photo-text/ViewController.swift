//
//  ViewController.swift
//  Photo-text
//
//  Created by LDSmallCat on 2017/10/9.
//  Copyright © 2017年 LDSmallCat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attrStr1 = NSAttributedString(string: "LDSmallCat", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
        let attrStr2 = NSAttributedString(string: "LDSmallCat", attributes: [NSAttributedStringKey.foregroundColor : UIColor.blue])
        
        let attachment = NSTextAttachment()
        attachment.image = UIImage.init(named: "d_aini")
        let font = photoTextLabel.font
        
        attachment.bounds = CGRect(x: 0, y: -4, width: font!.lineHeight, height: font!.lineHeight)
        let attImageStr = NSAttributedString(attachment: attachment)
        
        
        
        
        let attMstr = NSMutableAttributedString()
        attMstr.append(attrStr1)
        attMstr.append(attImageStr)
        attMstr.append(attrStr2)
        photoTextLabel.attributedText = attMstr
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

