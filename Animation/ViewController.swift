//
//  ViewController.swift
//  Animation
//
//  Created by Paul Richardson on 11/05/2021.
//

import UIKit

class ViewController: UIViewController {

	var imageView: UIImageView!
	var currentAnimation = 0
	let numberOfAnimations = 7

	override func viewDidLoad() {
		super.viewDidLoad()

		imageView = UIImageView(image: UIImage(named: "penguin"))
		let centre = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
		imageView.center = centre
		view.addSubview(imageView)

	}

	@IBAction func tapped(_ sender: UIButton) {
		sender.isHidden = true

		UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: []) {
			switch self.currentAnimation {
			case 0:
				self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
			case 2:
				self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
			case 4:
				self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
			case 6:
				self.imageView.alpha = 0.1
				self.imageView.backgroundColor = .green
			case 7:
				self.imageView.alpha = 1
				self.imageView.backgroundColor = .clear
			case let x where x % 2 == 1:
				self.imageView.transform = .identity
			default:
				break
			}
		} completion: { finished in
			sender.isHidden = false
		}

		currentAnimation =  currentAnimation < numberOfAnimations ? currentAnimation + 1 : 0

	}
	
}

