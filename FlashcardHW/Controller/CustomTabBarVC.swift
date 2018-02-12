//
//  ViewController.swift
//  FlashcardHW
//
//  Created by Masai Young on 2/12/18.
//  Copyright © 2018 Masai Young. All rights reserved.
//

import UIKit

class CustomTabBarVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyTabBar(into: self)
    }
    
    func applyTabBar(into controller: UIViewController) {
        let tabIcons: [String] = ["cards", "add", "settings"]
        
        let tabController = AZTabBarController.insert(into: controller, withTabIconNames: tabIcons, andSelectedIconNames: tabIcons)
        
        // Set controllers inside tab bar
        tabController.setViewController(SignUpVC(), atIndex: 0)
         tabController.setTitle("Cards", atIndex: 0)

        
        tabController.setViewController(LoginVC(), atIndex: 1)
         tabController.setTitle("Add", atIndex: 1)

        
        tabController.setViewController(LoginVC(), atIndex: 2)
         tabController.setTitle("Settings", atIndex: 2)
        
        
        // Configure tab bar apparance
        tabController.defaultColor = Stylesheet.Contexts.TabBarController.DefaultColor
        tabController.selectedColor = Stylesheet.Contexts.TabBarController.SelectedColor
        tabController.highlightColor = Stylesheet.Contexts.TabBarController.HighlightColor
        tabController.highlightedBackgroundColor = Stylesheet.Contexts.TabBarController.HighlightedBackgroundColor
        tabController.buttonsBackgroundColor = Stylesheet.Contexts.TabBarController.ButtonsBackgroundColor
        tabController.selectionIndicatorColor = Stylesheet.Contexts.TabBarController.SelectionIndicatorColor
        tabController.selectionIndicatorHeight = 3.0
        tabController.separatorLineColor = Stylesheet.Contexts.TabBarController.SeparatorLineColor
        tabController.separatorLineVisible = true
        tabController.animateTabChange = true
    }
}


