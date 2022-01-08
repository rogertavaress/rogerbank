//
//  DashboardViewController.swift
//  rogerbank
//
//  Created by Rogério Tavares on 06/01/22.
//

import UIKit

class DashboardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var budgetsCollectionView: UICollectionView!
    
    var budgets = [
        BudgetModel(imageName: "booksCategory", name: "Estudos", total: 1000.0, balance: 970.0),
        BudgetModel(imageName: "groceriesCategory", name: "Alimentação", total: 1000.0, balance: 1000.0),
        BudgetModel(imageName: "marriageCategory", name: "Casamento", total: 5000.0, balance: 1000.0),
        BudgetModel(imageName: "travelCategory", name: "Viagem", total: 10000.0, balance: 9000.0)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        self.navigationController?.viewControllers = [self]
        
        budgetsCollectionView.register(UINib(nibName: BudgetCellViewController.identifier, bundle: nil), forCellWithReuseIdentifier: BudgetCellViewController.identifier)
        budgetsCollectionView.delegate = self
        budgetsCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return budgets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BudgetCellViewController.identifier, for: indexPath) as! BudgetCellViewController
        
        cell.configureBudget(budgets[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (budgetsCollectionView.frame.size.width/2)-6, height: (budgetsCollectionView.frame.size.width/2)-6)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
}

