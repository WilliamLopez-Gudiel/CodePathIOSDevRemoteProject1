//
//  ViewController.swift
//  MyStory
//
//  Created by William Gudiel on 3/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var profilePic: UIImageView!
    
    let backStory = Stories(title: "My Cool Story", image: "naruto", description: "Hi I'm Willy, I was born in Fairfax, Virginia in the year 2000 to a pair of immigrants. As a kid I was a bit reserved and kept to myself, however, once I was admmited to a college, I decided to take much more risks in life in order to expierience things I would never encounter if I didn't do so");
    let weakness = Stories(title: "My Only Weakness", image: "stage", description: "Performing to people is Willy's biggest weakness. Whenever Willy comes across a talet show or competion, he avoids it at all cost due to the fear of being the center of attention for a period of time. During that time, Willy undergoes many sysmptoms such as sweating,shaking, and hyperventalating");
    let lift = Stories(title: "How Much Can I Lift?", image: "gym", description: "Willy had always been a bit self-conscious about his weight. He knew he needed to get in shape, but he never had the motivation to do it. That is until his friend suggested they go to the gym together. On his first day at the gym, Willy felt nervous and out of place. He had never really worked out before and was unsure of what to do. As he walked through the gym, he saw people of all shapes and sizes, some lifting weights, others running on treadmills. Willy finally found an empty bench press and sat down, unsure of how to start. A trainer approached him and introduced himself, offering to help him get started. The trainer showed him proper form and explained how to use the weights. Willy started with a light weight, feeling a bit embarrassed, but as he continued to lift, he began to feel a sense of pride.");
    
    var stories: [Stories] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navBar.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        
        profilePic.layer.borderWidth = 1.0
        profilePic.layer.masksToBounds = false
        profilePic.layer.borderColor = UIColor.white.cgColor
        profilePic.layer.cornerRadius = profilePic.frame.size.width/2
        profilePic.clipsToBounds = true
        
        stories = [backStory,weakness,lift]



    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "theSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? StoryViewController {

            if tappedView.tag == 0 {
                detailViewController.story = stories[0]
            } else if tappedView.tag == 1 {
                detailViewController.story = stories[1]
            } else if tappedView.tag == 2 {
                detailViewController.story = stories[2]
            }  else {
                print("no Button was tapped, please check your selection.")
            }
        }
    }
    
    
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "theSegue", sender: sender)
    }
    
}

