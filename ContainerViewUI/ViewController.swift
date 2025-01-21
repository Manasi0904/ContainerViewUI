//
//  ViewController.swift
//  ContainerViewUI
//
//  Created by Kumari Mansi on 20/11/24.
//

import UIKit

class ViewController: UIViewController {

    let secondVC = SecondViewController()
    let thirdVC = ThirdViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    private func setup() {
       
        addChild(secondVC)
        addChild(thirdVC)
        self.view.addSubview(secondVC.view)
        self.view.addSubview(thirdVC.view)
        secondVC.didMove(toParent: self)
        thirdVC.didMove(toParent: self)
        
        secondVC.view.frame = self.view.bounds
        thirdVC.view.frame = self.view.bounds
        thirdVC.view.isHidden = true
    
    }
    
    @IBAction func didTapSegment(segment: UISegmentedControl) {
        secondVC.view.isHidden = true
        thirdVC.view.isHidden = true
        if segment.selectedSegmentIndex == 0 {
            secondVC.view.isHidden = false
            
        }
        else {
            thirdVC.view.isHidden = false
        }
    }
    


}

