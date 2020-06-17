//
//  ViewController.swift
//  DKChangeView
//
//  Created by David Kuo on 2019/7/10.
//  Copyright © 2019 David Kuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "NavigationBar"
    }

    @IBAction func performSegue(_ sender: Any)
    {
        performSegue(withIdentifier: "performSegue", sender: nil)
    }

    @IBAction func present(_ sender: Any)
    {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "PresentViewController")
        {
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func push(_ sender: Any)
    {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let controller = mainStoryboard.instantiateViewController(withIdentifier: "PushViewController") as? PushViewController, (navigationController != nil)
        {
            navigationController?.pushViewController(controller, animated: true)
        } else {
            let alertViewController = UIAlertController(title: "Fail", message: "this view can not push", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertViewController.addAction(okAction)
            present(alertViewController, animated: true, completion: nil)
        }
    }
}

