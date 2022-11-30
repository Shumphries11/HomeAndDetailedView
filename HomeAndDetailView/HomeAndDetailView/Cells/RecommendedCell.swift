import UIKit

class RecommendedCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: RecommendedCell.self)
    static let nib = UINib(nibName: String(describing: RecommendedCell.self), bundle: nil)

    @IBOutlet weak var recommendedCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
