//
//  ViewController.swift
//  Animation
//
//  Created by Paul Richardson on 11/05/2021.
//

import UIKit

class ViewController: UIViewController {

	var imageView: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()

		imageView = UIImageView(image: UIImage(named: "penguin"))
		imageView.center = CGPoint(x: 512, y: 384)
		view.addSubview(imageView)

	}

	@IBAction func tapped(_ sender: Any) {
	}
	
}

