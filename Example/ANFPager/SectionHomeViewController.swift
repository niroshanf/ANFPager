//
//  SectionHomeViewController.swift
//  ANFPager-Test
//
//  Created by Anthony Niroshan Fernandez on 08/07/2021.
//  Copyright © 2021 Anthony Niroshan Fernandez. All rights reserved.
//

import UIKit

class SectionHomeViewController: UIViewController {

    @IBOutlet weak var orientation: UILabel!
    @IBOutlet weak var section: UILabel!
    @IBOutlet weak var line: UIView!
    @IBOutlet weak var tableview: UITableView!
    
    private var sectionName: String?
    private var sectionColor: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.orientation.text = config.shared.semanticContentAttribute == .forceLeftToRight ? "LTR Layout" : "RTL Layout"
    
        self.setupTable()
        
        self.view.semanticContentAttribute = config.shared.semanticContentAttribute
        
        if let name = self.sectionName {
            self.section.text = name
        }
        
        if let color = self.sectionColor {
            self.section.textColor = color
            self.line.backgroundColor = color
        }
    }
    
    private func setupTable() {
        self.tableview.estimatedRowHeight = 100
        self.tableview.rowHeight = UITableView.automaticDimension

        let nib: UINib = UINib(nibName: "ArticleCell", bundle: Bundle.main)
        self.tableview.register(nib, forCellReuseIdentifier: "Cell")
    }
    
    func setData(secName: String, color: UIColor) {
        self.sectionName = secName
        self.sectionColor = color
    }
}

extension SectionHomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int.random(in: (3...10))
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ArticleCell = tableview.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ArticleCell
        
        return cell
    }
}
