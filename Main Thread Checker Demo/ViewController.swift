//
//  ViewController.swift
//  Main Thread Checker Demo
//
//  Created by Hanet on 8/2/17.
//  Copyright © 2017 Mary Alexis Solis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // This triggers an Main Thread Checker warning because the
        // background color is changed in a thread other than the main
        // thread.
        // Comment this to remove the warning
        DispatchQueue.global().async {
            self.view.backgroundColor = UIColor.gray
        }
        

        // Uncomment this code snippet to execute a UI update in the main
        // thread coming from a non-UI thread
        /*
        DispatchQueue.global().async {
            DispatchQueue.main.async { [weak self] in
                guard let strongSelf = self else {
                    print("Self is nil")
                    return
                }
                strongSelf.view.backgroundColor = UIColor.gray
            }
        }
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

