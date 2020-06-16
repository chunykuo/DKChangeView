//
//  UIViewControllerExtension.swift
//  DKChangeView
//
//  Created by David Kuo on 2020/4/22.
//  Copyright © 2020 David Kuo. All rights reserved.
//

import UIKit

extension UIViewController {
    func topMostViewController() -> UIViewController {
        
        if let presented = self.presentedViewController {
            return presented.topMostViewController()
        }
        
        if let navigation = self as? UINavigationController {
            return navigation.visibleViewController?.topMostViewController() ?? navigation
        }
        
        if let tab = self as? UITabBarController {
            return tab.selectedViewController?.topMostViewController() ?? tab
        }
        
        return self
    }
    
    func getRootController () -> UIViewController {
        return (UIApplication.shared.delegate?.window!!.rootViewController)!
    }
}
