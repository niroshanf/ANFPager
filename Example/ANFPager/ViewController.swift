//
//  ViewController.swift
//  ANFPager
//
//  Created by Anthony Fernandez on 01/11/2020.
//  Copyright (c) 2020 Anthony Fernandez. All rights reserved.
//

import UIKit
import ANFPager

class config {
    
    public static var shared: config = config()
    
    public var semanticContentAttribute: UISemanticContentAttribute = .forceLeftToRight
    
    private init() {}
}

class ViewController: UIViewController {

    @IBOutlet var detailContainer: UIView!
    
    var pager: PagerManager!

    var colors = [UIColor.red, UIColor.green, UIColor.yellow, UIColor.orange, UIColor.gray, UIColor.blue, UIColor.brown, UIColor.cyan, UIColor.darkGray, UIColor.magenta, UIColor.purple]
    
    let sectionsList = ["Section 1", "Section 2", "Section 3", "Section 4", "Section 5", "Section 6", "Section 7", "Section 8", "Section 9", "Section 10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Config that control the layout direction
        config.shared.semanticContentAttribute = .forceRightToLeft
        
        //Pagin view
        self.pager = PagerManager(container: self.detailContainer, pages: sectionsList.count, delegate: self)
        self.pager.createPageViewController(orientation: config.shared.semanticContentAttribute, transitionType: .scroll)
    }
}

extension ViewController: PagerManagerDelegate {
    
    func viewControllerAtIndex(index: Int) -> UIViewController? {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "SectionVC") as! SectionHomeViewController
        vc.setData(secName: self.sectionsList[index], color: self.colors[index])
        
        return vc
    }
    
    func willTransitionToIndex(index: Int) {
        print("willTransitionToIndex = \(index)")
    }
    
    func didTransitionToIndex(index: Int) {
        print("didTransitionToIndex")
    }
    
    func pageviewDidScroll(offset: CGPoint, direction: PageDirection) {
        print("pageviewDidScroll")
    }
    
    func pageviewWillBeginDragging() {
        print("Will begin draging")
    }
    
    func pageviewDidEndDecelerating() {
        print("pageviewDidEndDecelerating")
    }
}

