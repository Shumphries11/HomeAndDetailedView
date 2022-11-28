import UIKit

class RecommendedHeaderCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: RecommendedHeaderCell.self)
    static let nib = UINib(nibName: String(describing: RecommendedHeaderCell.self), bundle: nil)
    
    @IBOutlet weak var recommendHeader: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
