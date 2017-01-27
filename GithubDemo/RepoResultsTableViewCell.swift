//
//  RepoResultsTableViewCell.swift
//  GithubDemo
//
//  Created by Daniel Ku on 1/26/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoResultsTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionsBox: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
