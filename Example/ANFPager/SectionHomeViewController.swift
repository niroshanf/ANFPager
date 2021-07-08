//
//  SectionHomeViewController.swift
//  ANFPager-Test
//
//  Created by Anthony Niroshan Fernandez on 08/07/2021.
//  Copyright © 2021 Anthony Niroshan Fernandez. All rights reserved.
//

import UIKit

class SectionHomeViewController: UIViewController {

    @IBOutlet weak var section: UILabel!
    @IBOutlet weak var line: UIView!
    
    var sectionName: String!
    var lineColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.section.text = self.sectionName
        self.section.textColor = self.lineColor
        self.line.backgroundColor = self.lineColor
    }

}
