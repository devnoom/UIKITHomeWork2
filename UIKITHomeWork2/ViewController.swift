//
//  ViewController.swift
//  UIKITHomeWork2
//
//  Created by MacBook Air on 05.04.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productItem: UILabel!
    @IBOutlet weak var productRating: UILabel!
    @IBOutlet weak var usersQuantity: UILabel!
    @IBOutlet weak var ratingStar:
    UILabel!
    @IBOutlet weak  var productDescription: UILabel!
    @IBOutlet weak var productSize: UILabel!
    @IBOutlet weak var smallSize: UIButton!
    @IBOutlet weak var mediumSize: UIButton!
    @IBOutlet weak var bigSize: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var buyButton: UIButton!
      
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet var heart: UIView!
    var product: Product!
    
    
    @IBAction func changeToSmall(_ sender: UIButton) {
        smallSize.backgroundColor = .orange
        bigSize.backgroundColor = .white
        mediumSize.backgroundColor = .white
        price.text = "$3.49"
    }
    @IBAction func changeToMedium(_ sender: UIButton){
        mediumSize.backgroundColor = .orange
        smallSize.backgroundColor = .white
        bigSize.backgroundColor = .white
        price.text = "$6.49"
        
    }
    @IBAction func changeToBig(_ sender: UIButton){
        smallSize.backgroundColor = .white
        mediumSize.backgroundColor = .white
        bigSize.backgroundColor = .orange
        price.text = "$9.99"
    }
    @IBAction func buy(_ sender: UIButton){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        product = Product(name: "კაპუჩინო", price: 9.99)
                
                // Update labels with product information
                productName.text = product.name
                price.text = "$\(product.price)"
        
        
        styleButtons()
        let spacing: CGFloat = 12
            smallSize.trailingAnchor.constraint(equalTo: mediumSize.leadingAnchor, constant: -spacing).isActive = true
            mediumSize.trailingAnchor.constraint(equalTo: bigSize.leadingAnchor, constant: -spacing).isActive = true
        
       
    
    }
    func styleButtons() {
        
        
            smallSize.backgroundColor = .white
            smallSize.layer.borderWidth = 1
            smallSize.layer.borderColor = UIColor.lightGray.cgColor
            smallSize.layer.cornerRadius = 15

            mediumSize.backgroundColor = .white
            mediumSize.layer.borderWidth = 1
            mediumSize.layer.borderColor = UIColor.lightGray.cgColor
            mediumSize.layer.cornerRadius = 15

            bigSize.backgroundColor = .white
            bigSize.layer.borderWidth = 1
            bigSize.layer.borderColor = UIColor.lightGray.cgColor
            bigSize.layer.cornerRadius = 15

            buyButton.backgroundColor = .orange
            buyButton.layer.borderWidth = 1
            buyButton.layer.borderColor = UIColor.lightGray.cgColor
            buyButton.layer.cornerRadius = 15
        
        
        
        productRating.font = UIFont.boldSystemFont(ofSize: 25)
        productName.font = UIFont.boldSystemFont(ofSize: 20)
        productItem.font = .systemFont(ofSize: 12)
        }

    struct Product {
        var name: String
        var price: Double
    }

}

