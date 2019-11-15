//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        //Objects
        let view = UIView()
        let backgroundImageView = UIImageView()
        let cardView = UIView()
        let coverImage = UIImageView()
        let titleLabel = UILabel()
        let captionLabel = UILabel()

        //Frames
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        coverImage.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
        titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        
        //View style
        cardView.layer.cornerRadius = 14
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 50)
        cardView.layer.shadowRadius = 10
            //Cliping to Bounds
        coverImage.clipsToBounds = true
        coverImage.layer.cornerRadius = 14
        
        //Colors
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        cardView.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        captionLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        titleLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        //Image
        backgroundImageView.image = #imageLiteral(resourceName: "Chapters Screen@2x.png")
        coverImage.image = #imageLiteral(resourceName: "Cover.jpg")
        // Image Style
        coverImage.contentMode = .scaleAspectFill
        
        //Text
        captionLabel.text = "Let's Design In Playgroung"
        titleLabel.text = "learn swift 4"
         //Text style
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        
        //View Hiearchy
        view.addSubview(backgroundImageView)
        view.addSubview(cardView)
        cardView.addSubview(coverImage)
        cardView.addSubview(captionLabel)
        cardView.addSubview(titleLabel)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
