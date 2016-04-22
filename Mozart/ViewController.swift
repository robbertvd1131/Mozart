//
//  ViewController.swift
//  Mozart
//
//  Created by Fhict on 01/04/16.
//  Copyright © 2016 Fhict. All rights reserved.
//
import MediaPlayer
import UIKit
import MobileCoreServices
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var C: UIImageView!
    @IBOutlet weak var D: UIImageView!
    @IBOutlet weak var E: UIImageView!
    @IBOutlet weak var F: UIImageView!
    @IBOutlet weak var G: UIImageView!
    @IBOutlet weak var A: UIImageView!
    @IBOutlet weak var B: UIImageView!
    
    var mediaPlayerA = AVAudioPlayer()
    var mediaPlayerB = AVAudioPlayer()
    var mediaPlayerC = AVAudioPlayer()
    var mediaPlayerD = AVAudioPlayer()
    var mediaPlayerE = AVAudioPlayer()
    var mediaPlayerF = AVAudioPlayer()
    var mediaPlayerG = AVAudioPlayer()
    
    var mediaPlayerA1 = AVAudioPlayer()
    var mediaPlayerB1 = AVAudioPlayer()
    var mediaPlayerC1 = AVAudioPlayer()
    var mediaPlayerD1 = AVAudioPlayer()
    var mediaPlayerE1 = AVAudioPlayer()
    var mediaPlayerF1 = AVAudioPlayer()
    var mediaPlayerG1 = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UIInterfaceOrientation.LandscapeLeft.rawValue
        UIDevice.currentDevice().setValue(value, forKey: "orientation")
        // Do any additional setup after loading the view, typically from a nib.
        C.image = UIImage(named: "C")
        C.userInteractionEnabled = true
        C.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTappedC:"))
        
        D.image = UIImage(named: "D")
        D.userInteractionEnabled = true
        D.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTappedD:"))
        
        E.image = UIImage(named: "E")
        E.userInteractionEnabled = true
        E.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTappedE:"))
        
        F.image = UIImage(named: "F")
        F.userInteractionEnabled = true
        F.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTappedF:"))
        
        G.image = UIImage(named: "G")
        G.userInteractionEnabled = true
        G.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTappedG:"))
        
        A.image = UIImage(named: "A")
        A.userInteractionEnabled = true
        A.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTappedA:"))
        
        B.image = UIImage(named: "B")
        B.userInteractionEnabled = true
        B.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTappedB:"))
        
        do
        {
             mediaPlayerA = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/a.wav"))
             mediaPlayerB = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/b.wav"))
             mediaPlayerC = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/c.wav"))
             mediaPlayerD = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/d.wav"))
             mediaPlayerE = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/e.wav"))
             mediaPlayerF = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/f.wav"))
             mediaPlayerG = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/g.wav"))
            
            mediaPlayerA1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/a.wav"))
            mediaPlayerB1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/b.wav"))
            mediaPlayerC1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/c.wav"))
            mediaPlayerD1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/d.wav"))
            mediaPlayerE1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/e.wav"))
            mediaPlayerF1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/f.wav"))
            mediaPlayerG1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/Users/fhict/Downloads/g.wav"))
        }
        catch
        {
            print("Crash")
        }
        
        
    }
    

    var startime:Int = 0
    var path:String = ""

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        

    }

    func stopmusic(){
        /*mediaPlayerA.stop()
        mediaPlayerB.stop()
        mediaPlayerC.stop()
        mediaPlayerD.stop()
        mediaPlayerE.stop()
        mediaPlayerF.stop()
        mediaPlayerG.stop()*/
    }
    
    func time(){
        
    }
    
    func buttonTappedC(sender: UITapGestureRecognizer) {
        if (sender.state == .Ended) {
            let calendar = NSCalendar.currentCalendar()
            let date = NSDate()
            let components = calendar.components([.Hour, .Minute, .Second], fromDate: date)
            
            let time:Int = (components.hour * 3600) + (components.minute * 60) + components.second
            
            print(datagetter("C", time: time))
            if (mediaPlayerC.playing == true) {
                mediaPlayerC1.stop()
                mediaPlayerC1.play()
            }
            else {
            stopmusic()
            mediaPlayerC.stop()
            mediaPlayerC.play()
            }
        }
    }
    
    func buttonTappedD(sender: UITapGestureRecognizer) {
        if (sender.state == .Ended) {
            let calendar = NSCalendar.currentCalendar()
            let date = NSDate()
            let components = calendar.components([.Hour, .Minute, .Second], fromDate: date)
            
            let time:Int = (components.hour * 3600) + (components.minute * 60) + components.second
            
            print(datagetter("D", time: time))
            if (mediaPlayerD.playing == true) {
                mediaPlayerD1.stop()
                mediaPlayerD1.play()
            }
            else {
            stopmusic()
            mediaPlayerD.stop()
            mediaPlayerD.play()
            }
        }
    }
    
    func buttonTappedE(sender: UITapGestureRecognizer) {
        if (sender.state == .Ended) {
            let calendar = NSCalendar.currentCalendar()
            let date = NSDate()
            let components = calendar.components([.Hour, .Minute, .Second], fromDate: date)
            
            let time:Int = (components.hour * 3600) + (components.minute * 60) + components.second
            
            print(datagetter("E", time: time))
            if (mediaPlayerE.playing == true) {
                mediaPlayerE1.stop()
                mediaPlayerE1.play()
            }
            else {
                stopmusic()
                mediaPlayerE.stop()
                mediaPlayerE.play()
            }
        }
    }
    
    func buttonTappedF(sender: UITapGestureRecognizer) {
        if (sender.state == .Ended) {
            let calendar = NSCalendar.currentCalendar()
            let date = NSDate()
            let components = calendar.components([.Hour, .Minute, .Second], fromDate: date)
            
            let time:Int = (components.hour * 3600) + (components.minute * 60) + components.second
            
            print(datagetter("F", time: time))
            if (mediaPlayerF.playing == true) {
                mediaPlayerF1.stop()
                mediaPlayerF1.play()
            }
            else {
                stopmusic()
                mediaPlayerF.stop()
                mediaPlayerF.play()
            }
        }
    }
    
    func buttonTappedG(sender: UITapGestureRecognizer) {
        if (sender.state == .Ended) {
            let calendar = NSCalendar.currentCalendar()
            let date = NSDate()
            let components = calendar.components([.Hour, .Minute, .Second], fromDate: date)
            
            let time:Int = (components.hour * 3600) + (components.minute * 60) + components.second
            
            print(datagetter("G", time: time))
            if (mediaPlayerG.playing == true) {
                mediaPlayerG1.stop()
                mediaPlayerG1.play()
            }
            else {
                stopmusic()
                mediaPlayerG.stop()
                mediaPlayerG.play()
            }
        }
    }
    
    func buttonTappedA(sender: UITapGestureRecognizer) {
        if (sender.state == .Ended) {
            let calendar = NSCalendar.currentCalendar()
            let date = NSDate()
            let components = calendar.components([.Hour, .Minute, .Second], fromDate: date)
            
            let time:Int = (components.hour * 3600) + (components.minute * 60) + components.second
            
            print(datagetter("A", time: time))

            if (mediaPlayerA.playing == true) {
                mediaPlayerA1.stop()
                mediaPlayerA1.play()
            }
            else {
                stopmusic()
                mediaPlayerA.stop()
                mediaPlayerA.play()
            }
        }
    }
    
    func buttonTappedB(sender: UITapGestureRecognizer) {
        if (sender.state == .Ended) {
            
            let calendar = NSCalendar.currentCalendar()
            let date = NSDate()
            let components = calendar.components([.Hour, .Minute, .Second], fromDate: date)
            
            let time:Int = (components.hour * 3600) + (components.minute * 60) + components.second
            
            print(datagetter("B", time: time))
            if (mediaPlayerB.playing == true) {
                mediaPlayerB1.stop()
                mediaPlayerB1.play()
            }
            else {
                stopmusic()
                mediaPlayerB.stop()
                mediaPlayerB.play()
            }
        }
    }
    
    func datagetter (notes: String, time: Int) ->String{
        
        if startime == 0 {
            startime = time
        }
        let notetime:Int = time - startime
        post(notes, time: notetime)
        return String(notetime) + ", " + notes
        
    }
    
    func post(notes: String, time: Int) {
        
        let myUrl = NSURL(string: "http://athena.fhict.nl/users/i284784/php/notepost.php");
        let request = NSMutableURLRequest(URL:myUrl!);
        request.HTTPMethod = "POST"
        // Compose a query string
        let postString = "notes=" + notes + "&time=" + String(time);
        
        request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding);
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
            data, response, error in
            
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            // You can print out response object
            print("response = \(response)")
            
            // Print out response body
            let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
            print("responseString = \(responseString)")
            
            //Let’s convert response sent from a server side script to a NSDictionary object:
            
            do{
                
                let myJSON = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableLeaves) as? NSDictionary
                
                if let parseJSON = myJSON {
                    // Now we can access value of First Name by its key
                    let notes = parseJSON["notes"] as? String
                    let time = parseJSON["time"] as? Int
                    print("notes: \(notes)")
                }
                
                
            }catch let error as NSError {
                print("JSON Error: \(error.localizedDescription)")
            }
            
        }
        
        task.resume()
        
    }

    
    /*override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            
            print("finger is not touching.") //this will not fire if finger stopped swipping
            
        }
        super.touchesBegan(touches, withEvent:event)
    }*/
    
}

