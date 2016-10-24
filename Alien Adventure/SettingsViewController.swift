//
//  SettingsViewController.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - SettingsViewController: UIViewController

class SettingsViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelSegmentedControl: UISegmentedControl!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var showBadgesLabel: UILabel!    
    @IBOutlet weak var showBadgesSwitch: UISwitch!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributesDictionary: [String:AnyObject] = [
            NSFontAttributeName: UIFont(name: Settings.Common.Font, size: 18)!
        ]
        
        titleLabel.font = UIFont(name: Settings.Common.Font, size: 32)
        showBadgesLabel.font = UIFont(name: Settings.Common.Font, size: 20)
        showBadgesSwitch.onTintColor = UIColor.magenta
        levelSegmentedControl.setTitleTextAttributes(attributesDictionary, for: UIControlState())
        Settings.Common.Level = levelSegmentedControl.selectedSegmentIndex
        startGameButton.titleLabel?.font = UIFont(name: Settings.Common.Font, size: 20)
        
        addTargets()
    }
    
    // MARK: Add Targets
    
    func addTargets() {
        print("adding targets!")
        
        startGameButton.addTarget(self, action: #selector(startGame), for: .touchUpInside)
        showBadgesSwitch.addTarget(self, action: #selector(showBadges), for: .touchUpInside)
        levelSegmentedControl.addTarget(self, action: #selector(switchLevel), for: .valueChanged)
    }
    
    // MARK: Implementing Actions
    
    func switchLevel(segmentControl: UISegmentedControl) {
        print("level control has changed!")
        Settings.Common.Level=segmentControl.selectedSegmentIndex
        print(Settings.Common.Level)
    }
    
    func showBadges(switchControl: UISwitch) {
        Settings.Common.ShowBadges=switchControl.isOn
        print(Settings.Common.ShowBadges)
    }
    
    func startGame() {
        let alienAdventureViewController = self.storyboard!.instantiateViewController(withIdentifier: "AlienAdventureViewController")
            as! AlienAdventureViewController
        
        self.present(alienAdventureViewController,
                                   animated: true, completion: nil)
        print("start button has been pressed!")
    }
}
