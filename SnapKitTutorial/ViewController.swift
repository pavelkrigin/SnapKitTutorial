//
//  ViewController.swift
//  SnapKitTutorial
//
//  Created by Pavel Krigin on 06.05.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    //MARK: elements
    let button = UIButton(type: .system)
    let textField = UITextField()
    let label = UILabel()
    
    //MARK: override
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButton()
        setupTextFiel()
        setupLabel()
    }
    
    //MARK: layouts methods
    func setupButton() {
        view.addSubview(button)
        button.backgroundColor = .green
        button.setTitle("PUSH", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.layer.cornerCurve = CALayerCornerCurve.continuous
        button.layer.cornerRadius = 20
        button.snp.makeConstraints { button in
            button.width.equalTo(110)
            button.height.equalTo(55)
            button.center.equalTo(view)
        }
    }
    
    func setupTextFiel() {
        view.addSubview(textField)
        textField.backgroundColor = .lightGray
        textField.layer.cornerRadius = 7
        textField.snp.makeConstraints { textField in
            textField.width.equalTo(150)
            textField.height.equalTo(36)
            textField.bottom.equalTo(button.snp.top).inset(-60)
            textField.centerX.equalTo(view)
        }
    }
    
    func setupLabel() {
        view.addSubview(label)
        label.text = ""
        label.textAlignment = .center
        label.snp.makeConstraints { label in
            label.width.equalTo(200)
            label.height.equalTo(150)
            label.bottom.equalTo(textField.snp.top).inset(-30)
            label.centerX.equalTo(view)
        }
    }
    
    @objc func buttonAction() {
        label.text = textField.text
    }
    
}

