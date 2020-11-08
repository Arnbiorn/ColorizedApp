//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Егор Скрутелев on 08.11.2020.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ColorViewController
        colorVC.delegate = self
        colorVC.mainViewController = view.backgroundColor
    }
}

// MARK: - Color Delegate
extension MainViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
