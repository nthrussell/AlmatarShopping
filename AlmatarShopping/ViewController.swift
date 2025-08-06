//
//  ViewController.swift
//  AlmatarShopping
//
//  Created by Minhajul Arafin Russel on 5/8/25.
//

import UIKit
import ALSLFramework

class ViewController: UIViewController {
    
    private(set) lazy var SLButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.topItem?.title = "Almatar Shopping"
        
        view.backgroundColor = .white
        view.addSubview(SLButton)
        setUpLayouts()
        
        SLButton.setTitle("Go to Shopping List", for: .normal)
    }
    
    @objc
    func tapAction() {
        print("button tapped")
        let vc: UIViewController = ShoppingListFactory.makeViewController() as! UIViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func setUpLayouts() {
        NSLayoutConstraint.activate([
            SLButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SLButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            SLButton.heightAnchor.constraint(equalToConstant: 50),
            SLButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
}

