//
//  TweetViewController.swift
//  Twitter
//
//  Created by Kunwar Sahni on 2/16/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var tweetButton: UIBarButtonItem!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func tweetTapped(_ sender: Any) {
        if(!textView.text.isEmpty){
            TwitterAPICaller.client?.postTweet(tweetString: textView.text, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (Error) in
                print("Error in Posting Tweet \(Error)")
            })
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
}
