//
//  StoryViewController.swift
//  MyStory
//
//  Created by William Gudiel on 3/2/23.
//

import UIKit

class StoryViewController: UIViewController {


    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var theStory: UILabel!
    @IBOutlet weak var imageStory: UIImageView!
    
    
    var story: Stories!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.title = story?.title
        imageStory.image = UIImage(named: story!.image)
        theStory.text = story?.description

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

}
