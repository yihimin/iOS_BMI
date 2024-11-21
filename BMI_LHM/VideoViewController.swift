import UIKit
import AVKit

class VideoViewController: UIViewController {

    @IBAction func playVideo(_ sender: UIButton) {
        // 1. 비디오 경로 안전하게 언래핑
        guard let videoPath = Bundle.main.path(forResource: "bmi", ofType: "mp4") else {
            // 파일이 없을 경우 처리
            print("비디오 파일을 찾을 수 없습니다.")
            return
        }
        
        // 2. 비디오 URL 생성
        let videoURL = URL(filePath: videoPath)
        
        // 3. AVPlayer와 AVPlayerViewController 설정
        let player = AVPlayer(url: videoURL)
        let playerController = AVPlayerViewController()
        playerController.player = player
        
        // 4. 화면에 표시 및 재생
        self.present(playerController, animated: true) {
            player.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
