//
//  HomePageViewController.swift
//  SuffragetteScavengerHunt2Kr
//
//  Created by Matthew Graham on 4/13/17.
//  Copyright © 2017 RIT Museum Studies Program. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBAction func toMainPage(_ sender: Any) {
        performSegue(withIdentifier: "StartSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
