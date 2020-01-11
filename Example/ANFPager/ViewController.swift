//
//  ViewController.swift
//  ANFPager
//
//  Created by Anthony Fernandez on 01/11/2020.
//  Copyright (c) 2020 Anthony Fernandez. All rights reserved.
//

import UIKit

//Setup 1: Import Pod
import ANFPager

class ViewController: UIViewController {

    @IBOutlet var detailContainer: UIView!
    
    var pager: PagerManager!

    var colors = [UIColor.red, UIColor.green, UIColor.yellow, UIColor.orange, UIColor.gray, UIColor.blue, UIColor.brown, UIColor.cyan, UIColor.darkGray, UIColor.magenta, UIColor.purple]
    
    let menuItems = ["Home", "news", "Saudi Today", "Business", "Sports", "Variety", "Programs", "Al Arabiya Today", "Views", "Last page", "Qafilah"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Pagin view
        self.pager = PagerManager(container: self.detailContainer, pages: menuItems.count, delegate: self)
        self.pager.createPageViewController(orientation: .forceRightToLeft, transitionType: .scroll)
    }
}

extension ViewController: PagerManagerDelegate {
    
    func viewControllerAtIndex(index: Int) -> UIViewController? {
        
        let vc = ArticleViewController()
        vc.articleId = index
        vc.view.backgroundColor = self.colors[index]
        
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

