//
//  BudgetCellViewController.swift
//  rogerbank
//
//  Created by Rogério Tavares on 07/01/22.
//

import UIKit

class BudgetCellViewController: UICollectionViewCell {
    static let identifier = "BudgetCellViewController"
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureBudget(_ budget: BudgetModel) {
        categoryImageView.image = budget.getImageView()
        titleLabel.text = budget.name.localizedCapitalized
        subtitleLabel.text = budget.getSubtitle()
        percentageLabel.text = budget.getPercentage()
    }
    
}
