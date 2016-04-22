//
//  notebalkcontroller.swift
//  Mozart
//
//  Created by Fhict on 08/04/16.
//  Copyright © 2016 Fhict. All rights reserved.
//

import UIKit

class notebalkcontroller: UIViewController {
    
    @IBOutlet weak var s1: UIImageView!
    @IBOutlet weak var s2: UIImageView!
    @IBOutlet weak var s3: UIImageView!
    @IBOutlet weak var s4: UIImageView!
    @IBOutlet weak var s15: UIImageView!
    @IBOutlet weak var s16: UIImageView!
    @IBOutlet weak var S19: UIImageView!
    @IBOutlet weak var s14: UIImageView!
    @IBOutlet weak var s20: UIImageView!
    @IBOutlet weak var s17: UIImageView!
    @IBOutlet weak var S22: UIImageView!
    @IBOutlet weak var s13: UIImageView!
    @IBOutlet weak var S21: UIImageView!
    @IBOutlet weak var s12: UIImageView!
    @IBOutlet weak var s18: UIImageView!
    @IBOutlet weak var s10: UIImageView!
    @IBOutlet weak var s9: UIImageView!
    @IBOutlet weak var s8: UIImageView!
    @IBOutlet weak var s7: UIImageView!
    @IBOutlet weak var s5: UIImageView!
    @IBOutlet weak var s6: UIImageView!
    @IBOutlet weak var S24: UIImageView!
    @IBOutlet weak var S25: UIImageView!
    @IBOutlet weak var S26: UIImageView!
    @IBOutlet weak var S27: UIImageView!
    @IBOutlet weak var S28: UIImageView!
    @IBOutlet weak var S29: UIImageView!
    @IBOutlet weak var S30: UIImageView!
    @IBOutlet weak var S31: UIImageView!
    @IBOutlet weak var S32: UIImageView!
    @IBOutlet weak var S33: UIImageView!
    @IBOutlet weak var S34: UIImageView!
    
    
    var collectionOfViews = [Int:UIImageView]()
    var randomnote = [Int:String]()
    
    func createmapping(){
        collectionOfViews[0] = s1
        collectionOfViews[1] = s2
        collectionOfViews[2] = s3
        collectionOfViews[3] = s4
        collectionOfViews[4] = s5
        collectionOfViews[5] = s6
        collectionOfViews[6] = s7
        collectionOfViews[7] = s8
        collectionOfViews[8] = s9
        collectionOfViews[9] = s10
        collectionOfViews[10] = s12
        collectionOfViews[11] = s13
        collectionOfViews[12] = s14
        collectionOfViews[13] = s15
        collectionOfViews[14] = s16
        collectionOfViews[15] = s17
        collectionOfViews[16] = s18
        collectionOfViews[17] = S19
        collectionOfViews[18] = s20
        collectionOfViews[19] = S21
        collectionOfViews[20] = S22
        collectionOfViews[21] = S24
        collectionOfViews[22] = S25
        collectionOfViews[23] = S26
        collectionOfViews[24] = S27
        collectionOfViews[25] = S28
        collectionOfViews[26] = S29
        collectionOfViews[27] = S30
        collectionOfViews[28] = S31
        collectionOfViews[29] = S28
        collectionOfViews[30] = S29
        collectionOfViews[31] = S30
        collectionOfViews[32] = S31
        collectionOfViews[33] = S32
        collectionOfViews[34] = S33
        collectionOfViews[35] = S34
    }
    
    func loadnotes(){
        

        
        var notes:String = "b"
        var i = 0
        //let value = UIInterfaceOrientation.LandscapeLeft.rawValue
        //UIDevice.currentDevice().setValue(value, forKey: "orientation")
        sleep(1)
        while i <= collectionOfViews.count - 1 {
        print(self.randomnote[Int(i)])
        notes = self.randomnote[Int(i)]! as String
        if (notes == "A"){
            UIView.animateWithDuration(1.0, animations: {
                self.collectionOfViews[Int(i)]!.frame = CGRectOffset(self.collectionOfViews[Int(i)]!.frame ,0, 0)
            })
        }
        if (notes == "B"){
            UIView.animateWithDuration(1.0, animations: {
                self.collectionOfViews[Int(i)]!.frame = CGRectOffset(self.collectionOfViews[Int(i)]!.frame ,0, 20)
            })
        }
        if (notes == "C"){
            UIView.animateWithDuration(1.0, animations: {
                self.collectionOfViews[Int(i)]!.frame = CGRectOffset(self.collectionOfViews[Int(i)]!.frame ,0, -0)
                self.collectionOfViews[Int(i)]!.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0)
            })
        }
        if (notes == "D"){
            UIView.animateWithDuration(1.0, animations: {
                self.collectionOfViews[Int(i)]!.frame = CGRectOffset(self.collectionOfViews[Int(i)]!.frame ,0, -18)
                self.collectionOfViews[Int(i)]!.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0)
            })
        }
        if (notes == "E"){
            UIView.animateWithDuration(1.0, animations: {
                self.collectionOfViews[Int(i)]!.frame = CGRectOffset(self.collectionOfViews[Int(i)]!.frame ,0, -22)
                self.collectionOfViews[Int(i)]!.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0)
            })
        }
        if (notes == "F"){
            UIView.animateWithDuration(1.0, animations: {
                self.collectionOfViews[Int(i)]!.frame = CGRectOffset(self.collectionOfViews[Int(i)]!.frame ,0, -35)
                self.collectionOfViews[Int(i)]!.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0)
            })
        }
        if (notes == "G"){
            UIView.animateWithDuration(1.0, animations: {
                self.collectionOfViews[Int(i)]!.frame = CGRectOffset(self.collectionOfViews[Int(i)]!.frame ,0, -40)
                self.collectionOfViews[Int(i)]!.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0)
            })
        }
        if (notes == ""){
                self.collectionOfViews[Int(i)]!.removeFromSuperview()
        }
           i = i + 1
        }

    }
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UIInterfaceOrientation.LandscapeLeft.rawValue
        UIDevice.currentDevice().setValue(value, forKey: "orientation")
        
        createmapping()
        jsonload()
        
        //View will slide 20px up
        //collectionOfViews[0]!.
        //s2.center = CGPointMake(0, 0)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func jsonload(){
        let requestURL: NSURL = NSURL(string: "http://athena.fhict.nl/users/i284784/php/noteblad.php")!
        let urlRequest: NSMutableURLRequest = NSMutableURLRequest(URL: requestURL)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(urlRequest) {
            (data, response, error) -> Void in
            
            let httpResponse = response as! NSHTTPURLResponse
            let statusCode = httpResponse.statusCode
            
            if (statusCode == 200) {
                do{
                    
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options:.AllowFragments)
                    
                    let results: NSArray = json as! NSArray
                    var i = 0
                    // we iterate over each element of the colorsArray array
                    for item in results {
                        
                        // we convert each key to a String
                        self.randomnote[Int(i)] = item["toonhoogte"] as? String
                        var color: String = item["tijdstip"] as! String
                        print("\(self.randomnote[i]): \(color)")
                        i = 1 + i
                    }
                    
                }catch {
                    print("Error with Json: \(error)")
                }
            }
        }
        task.resume()
    }
    
    override func viewDidAppear(animated: Bool) {
        //loadnotes()\
        
        self.loadnotes()

        
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
