//
//  LandscapeViewController.swift
//  IOS-Swift-DeviceOrientation
//
//  Created by Pooya Hatami on 2018-05-15.
//  Copyright © 2018 Pooya Hatami. All rights reserved.
//

import UIKit

class LandscapeViewController: UIViewController {

    @IBOutlet weak var labelViewL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.labelViewL!.text = "View in Landscape!"
    }



}
