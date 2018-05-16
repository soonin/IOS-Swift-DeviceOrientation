//
//  ViewController.swift
//  IOS-Swift-DeviceOrientation
//
//  Created by Pooya Hatami on 2018-05-15.
//  Copyright © 2018 Pooya Hatami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelViewP: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIDevice().type == .simulator {
            print("Running on the Simulator!")
        } else {
            print("Running on a \(UIDevice().type.rawValue)")
        }
        
    }

    override func viewDidAppear(_ animated: Bool) {
        if UIDevice.current.orientation.isLandscape {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LandscapeView") as! LandscapeViewController
            self.present(vc, animated: true , completion: nil)
        } else {
            self.labelViewP!.text = "View in Portrait!"
            dismiss(animated: true, completion: nil)
            
        }

    }
    
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        
        if UIDevice.current.orientation.isLandscape {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LandscapeView") as! LandscapeViewController
            self.present(vc, animated: true , completion: nil)
        } else {
            self.labelViewP!.text = "View in Portrait!"
            dismiss(animated: true, completion: nil)
            
        }
    }


}

