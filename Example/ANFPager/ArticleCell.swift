//
//  ArticleCell.swift
//  ANFPager_Example
//
//  Created by Anthony Niroshan Fernandez on 09/07/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

class ArticleCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        self.contentView.semanticContentAttribute = config.shared.semanticContentAttribute
    }
    
}
