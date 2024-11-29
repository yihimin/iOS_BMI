import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    // 공통 URL 로드 메서드
    private func loadURL(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            print("잘못된 URL입니다: \(urlString)")
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }

    @IBAction func goNaver(_ sender: UIButton) {
        // 네이버 URL 로드
        loadURL("https://m.naver.com")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 초기 Medium URL 로드
        loadURL("https://medium.com/@yihimin01")
    }
}
