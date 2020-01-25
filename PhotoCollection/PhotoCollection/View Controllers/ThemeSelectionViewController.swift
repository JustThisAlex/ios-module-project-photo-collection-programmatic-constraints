//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
    }

    @objc func selectDarkTheme() {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    @objc func selectBlueTheme() {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    func setUpSubviews() {
        let label = UILabel()
        label.text = "Select a theme"
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        let button1 = UIButton(type: .system)
        button1.setTitle("Dark", for: .normal)
        button1.addTarget(self, action: #selector(selectDarkTheme), for: .touchUpInside)
        view.addSubview(button1)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        button1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -10).isActive = true
        
        let button2 = UIButton(type: .system)
        button2.setTitle("Blue", for: .normal)
        button2.addTarget(self, action: #selector(selectBlueTheme), for: .touchUpInside)
        view.addSubview(button2)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        button2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 10).isActive = true
    }
    
    var themeHelper: ThemeHelper?
}
