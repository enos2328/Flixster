//
//  MovieGridDetailsViewController.swift
//  Flixster
//
//  Created by Beau Winslow on 2/11/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class MovieGridDetailsViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var backdropView: UIImageView!


    var movie: [String:Any]!

        override func viewDidLoad() {
            super.viewDidLoad()

            titleLabel.text = movie["title"] as? String
            titleLabel.sizeToFit()

            synopsisLabel.text = movie["overview"] as? String
            synopsisLabel.sizeToFit()


    //   // POSTER PICTURE
            let baseUrl = "https://image.tmdb.org/t/p/w185"
            let posterPath = movie["poster_path"] as! String
            let posterUrl = URL(string : baseUrl + posterPath)

            posterView.downloaded(from: posterUrl!)


    //   // BACKDROP PICTURE
            let backdropPath = movie["backdrop_path"] as! String
            let backdropUrl = URL(string : "https://image.tmdb.org/t/p/w780" + backdropPath)
            print(backdropPath)
            backdropView.downloaded(from: backdropUrl!)
        }
}
