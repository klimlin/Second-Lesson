//
//  ViewController.swift
//  Second Lesson
//
//  Created by MAcbook on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        greetingLabel.isHidden = true
        // greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }


    @IBAction func greetingButtonTapped() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setupButton(with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting")
        
//        greetingButton.setTitle(
//            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
//            for: .normal)
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        return buttonConfiguration
    }
}

