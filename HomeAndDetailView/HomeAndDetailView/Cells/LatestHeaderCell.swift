import UIKit

class LatestHeaderCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: LatestHeaderCell.self)
    static let nib = UINib(nibName: String(describing: LatestHeaderCell.self), bundle: nil)

    @IBOutlet weak var latestHeader: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
