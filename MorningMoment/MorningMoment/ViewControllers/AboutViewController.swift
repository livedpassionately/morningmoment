//
//  AboutViewController.swift
//  MorningMoment
//
//  Created by Thea Birk Berger on 5/1/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

import Foundation
import UIKit

protocol AboutViewControllerDelegate: class {
    
    func AboutViewControllerDidBack();
}


class AboutViewController: UIViewController {
    
    // CLASS PROPERTIES
    weak var delegate: AboutViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func backButtonClicked (sender: Any) {
        
        // ensure to not rerun viewDidLoad upon return to ViewController
        self.dismiss(animated: true, completion: self.delegate?.AboutViewControllerDidBack);
        
    }
    
}
