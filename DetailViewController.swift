//
//  DetailViewController.swift
//  TwikTableViewTransition
//
//  Created by Carpenter, Deepak (US - Bengaluru) on 13/03/17.
//  Copyright © 2017 Carpenter, Deepak (India). All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var avatarName: UILabel!
    @IBOutlet weak var avatarProfile: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var textViewForDeveloper: UITextView!
    
    let MAIN_LABEL_Y_ORIGIN : CGFloat = 0.0
    let IMAGEVIEW_Y_ORIGIN : CGFloat = 15.0
    var yOrigin : CGFloat?
    public var dictForData : NSMutableDictionary?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        avatarImage.image = UIImage(named: dictForData?.object(forKey: "Image") as! String)
        avatarName.text = dictForData?.object(forKey: "Name") as! String?
        avatarProfile.text = dictForData?.object(forKey: "Profile") as! String?
        animateOnLaunch()
    }

    func animateOnLaunch() {
        backgroundImageView.alpha = 0
        textViewForDeveloper.alpha = 0
        
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseInOut, animations: { 
            self.textViewForDeveloper.alpha = 1
            self.backgroundImageView.alpha = 1
        }, completion: nil)
        /*
         //set initial frames
         
         self.imageView.frame = CGRectMake(10, self.yOrigin + IMAGEVIEW_Y_ORIGIN, 50, 50);
         self.doneBtn.frame = CGRectMake(self.doneBtn.frame.origin.x, 0-self.doneBtn.frame.size.height-20, self.doneBtn.frame.size.width, self.doneBtn.frame.size.height);
         self.textviewForDetail.alpha = 0;
         self.textviewForDetail.frame = CGRectMake(self.textviewForDetail.frame.origin.x, self.textviewForDetail.frame.size.height + self.view.frame.size.height, self.textviewForDetail.frame.size.width, self.textviewForDetail.frame.size.height);
         
         //apply animation on ENTERING INTO THE VIEW
         [UIView animateWithDuration:0.4f
         delay:0
         options:UIViewAnimationOptionCurveEaseInOut
         animations:^(void)
         {
         self.labelForPlace.frame = CGRectMake(35, 180, self.labelForPlace.frame.size.width, self.labelForPlace.frame.size.height);
         self.labelForCountry.frame = CGRectMake(35, 250, self.labelForCountry.frame.size.width, self.labelForCountry.frame.size.height);
         self.doneBtn.frame = CGRectMake(self.doneBtn.frame.origin.x, 20, self.doneBtn.frame.size.width, self.doneBtn.frame.size.height);
         self.backgroundImageView.frame = CGRectMake(0, 0, self.view.frame.size.width, 300);
         self.backgroundImageView.alpha = 1;
         
         self.textviewForDetail.frame = CGRectMake(self.textviewForDetail.frame.origin.x, self.view.frame.size.height - self.textviewForDetail.frame.size.height, self.textviewForDetail.frame.size.width, self.textviewForDetail.frame.size.height);
         self.textviewForDetail.alpha = 1;
         
         NSLog(@"width %f height %f",self.imageView.frame.size.width,self.imageView.frame.size.height);
         
         self.imageView.frame = CGRectMake(110, 50, self.imageView.frame.size.width * 2, self.imageView.frame.size.height * 2);
         }
         completion:NULL];
         */
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
