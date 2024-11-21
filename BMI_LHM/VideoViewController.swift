import UIKit
import AVKit

class VideoViewController: UIViewController {

    @IBAction func playVideo(_ sender: UIButton) {
        let videoPath : String? = Bundle.main.path(forResource: "bmi" , ofType: "mp4")
        let videoURL = URL(filePath: videoPath!)
        let player = AVPlayer(url: videoURL)
        
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true)
        player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
