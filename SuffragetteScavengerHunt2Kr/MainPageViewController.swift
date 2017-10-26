//
//  MainPageViewController.swift
//  SuffragetteScavengerHunt2Kr
//
//  Created by Matthew Graham on 4/13/17.
//  Copyright © 2017 RIT Museum Studies Program. All rights reserved.
//

import UIKit

var suffragetteData = [
    "name":"",
    "description":"",
    "image":""
]
var newSuffragette = false;

class MainPageViewController: UIViewController, ProximityContentManagerDelegate {
    
    var proximityContentManager: ProximityContentManager!
    
    @IBOutlet weak var profile1Button: UIButton!
    @IBOutlet weak var profile2Button: UIButton!
    @IBOutlet weak var profile3Button: UIButton!
    @IBOutlet weak var profile4Button: UIButton!
    @IBOutlet weak var profile5Button: UIButton!
    @IBOutlet weak var profile6Button: UIButton!
    
    @IBAction func toHomePage(_ sender: Any) {
        performSegue(withIdentifier: "BackToHomePageSegue", sender: self)
    }
    
    @IBAction func toProfile(sender: UIButton) {
        var id: String
        switch sender {
        case profile1Button:
            id = "7c11ce0b9d69cdbc97b224f8ac696f00"
        case profile2Button:
            id = "d34aaca8bcfbd471372047d3df875418"
        case profile3Button:
            id = "c232d68887e4cd5315500fc4a59e1f15"
        case profile4Button:
            id = "e16dce819ae647e98a518de190702c05"
        case profile5Button:
            id = "1b853d12257e7857eb41eff1577f6214"
        case profile6Button:
            id = "8c5aee919dceac5f58f89dece902a82d"
        default:
            id = "NotAValidPublicID"
            break
        }
        if(UserData.instance.seen[id]!){
            suffragetteData["name"] = SuffragetteDetails.instance.suffragetteInfo[id]!["name"]!
            suffragetteData["description"] = SuffragetteDetails.instance.suffragetteInfo[id]!["description"]!
            suffragetteData["image"] = SuffragetteDetails.instance.suffragetteInfo[id]!["image"]!
            newSuffragette = false;
            performSegue(withIdentifier: "ToProfileSegue", sender: self)
        }
        
    }
    
    @IBAction func resetUserData(_ sender: Any) {
        for (id, _) in UserData.instance.seen{
            UserData.instance.seen[id] = false
        }
        performSegue(withIdentifier: "BackToHomePageSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.proximityContentManager = ProximityContentManager(
            beaconIDs: [
                BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 6407,  minor: 13336),  // Ice - Susan B. Anthony
                BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 39402, minor: 32922),  // Blueberry - Ida Breiman
                BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 36164, minor: 10696),  // Mint - Kate Gleason
                BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 49498, minor: 39510 ), // Candy - Hester C. Jeffrey
                BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 26939, minor: 1357 ),  // Beetroot - Fannie Barrier Williams
                BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 17135, minor: 10537 ), // Lemon - Martha Matilda Harper
            ],
            beaconContentFactory: CachingContentFactory(beaconContentFactory: BeaconDetailsCloudFactory()))
        
        for (_, seen) in UserData.instance.seen{
            if(seen){
                
            }
        }
        var seen = UserData.instance.seen
        if(seen["7c11ce0b9d69cdbc97b224f8ac696f00"]!){
            self.profile1Button.setImage(UIImage(named: "susanB"), for: UIControlState.normal)
        }
        if(seen["d34aaca8bcfbd471372047d3df875418"]!){
            self.profile2Button.setImage(UIImage(named: "ida"), for: UIControlState.normal)
        }
        if(seen["c232d68887e4cd5315500fc4a59e1f15"]!){
            self.profile3Button.setImage(UIImage(named: "kateG"), for: UIControlState.normal)
        }
        if(seen["e16dce819ae647e98a518de190702c05"]!){
            self.profile4Button.setImage(UIImage(named: "hester"), for: UIControlState.normal)
        }
        if(seen["1b853d12257e7857eb41eff1577f6214"]!){
            self.profile5Button.setImage(UIImage(named: "fannie"), for: UIControlState.normal)
        }
        if(seen["8c5aee919dceac5f58f89dece902a82d"]!){
            self.profile6Button.setImage(UIImage(named: "martha"), for: UIControlState.normal)
        }
        
        self.proximityContentManager.delegate = self
        self.proximityContentManager.startContentUpdates()
    }
    
    func proximityContentManager(_ proximityContentManager: ProximityContentManager, didUpdateContent content: AnyObject?) {
        if let beaconDetails = content as? BeaconDetails {
            if !UserData.instance.seen[beaconDetails.beaconPublicID]!{
                self.proximityContentManager.stopContentUpdates()
                suffragetteData["name"]! = beaconDetails.suffragetteName
                suffragetteData["description"]! = beaconDetails.suffragetteDesc
                suffragetteData["image"]! = beaconDetails.suffragetteImg
                newSuffragette = true;
                UserData.instance.seen[beaconDetails.beaconPublicID]! = true;
                debugPrintSeen()
                performSegue(withIdentifier: "ToProfileSegue", sender: self)
            }
        }
    }
    
    func debugPrintSeen(){
        for (id, seen) in UserData.instance.seen{
            print("\(id) = \(seen)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
