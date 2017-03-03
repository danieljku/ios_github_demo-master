//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Daniel Ku on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class SearchSettingsViewController: UIViewController {
    @IBOutlet weak var starSlider: UISlider!
    @IBOutlet weak var starCount: UILabel!
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings = GithubRepoSearchSettings()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        starCount.text = String(Int(settings.minStars))
        starSlider.maximumValue = 100000
        starSlider.minimumValue = 0
        starSlider.setValue(Float(settings.minStars), animated: true)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onSlider(_ sender: Any) {
        starCount.text = String(Int(starSlider.value))
        settings.minStars = Int(starSlider.value)
    }
    
    @IBAction func onSave(_ sender: Any) {
        //settings.minStars = 100000

        self.delegate?.didSaveSettings(settings: settings)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func onCancel(_ sender: Any) {
        self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
    }
}
