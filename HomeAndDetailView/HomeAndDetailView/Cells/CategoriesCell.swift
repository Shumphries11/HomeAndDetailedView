import UIKit

class CategoriesCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: CategoriesCell.self)
    static let nib = UINib(nibName: String(describing: CategoriesCell.self), bundle: nil)
    
    @IBOutlet weak var category1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
