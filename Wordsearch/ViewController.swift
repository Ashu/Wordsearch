//
//  ViewController.swift
//  Wordsearch
//
//  Created by Ashutosh Dave on 25/04/20.
//  Copyright © 2020 Ashutosh Dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let path = Bundle.main.url(forResource: "capitals", withExtension: "json")!
		let contents = try! Data(contentsOf: path)
		let words = try! JSONDecoder().decode([Word].self, from: contents)
		
		let wordSearch = WordSearch()
		wordSearch.words = words
		wordSearch.makeGrid()
	}


}

