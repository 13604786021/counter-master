//
//  ViewController.swift
//  counter
//
//  Created by CIEC_iMac on 16/6/23.
//  Copyright © 2016年 CIEC_iMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var m_m: UITextField!
   

    @IBOutlet weak var value: UITextField!
    var s=""
    var dotf=true
    var flag=0
    var flag2=0
    var temp=0.0
    var temp1=0.0
    var m=0.0
    @IBAction func one(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="1"
            value.text=s
        }else{
        s=s+"1"
        value.text=s
        }
    }
    @IBAction func two(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="2"
            value.text=s
        }else{
        s=s+"2"
        value.text=s
        }
    }
    @IBAction func three(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="3"
            value.text=s
        }else{
        s=s+"3"
        value.text=s
        }
    }
    @IBAction func four(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="4"
            value.text=s
        }else{
        s=s+"4"
        value.text=s
        }
    }
    @IBAction func five(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="5"
            value.text=s
        }else{
        s=s+"5"
        value.text=s
        }
    }
    @IBAction func six(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="6"
            value.text=s
        }else{
        s=s+"6"
        value.text=s
        }
    }
    @IBAction func seven(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="7"
            value.text=s
        }else{
        s=s+"7"
        value.text=s
        }
    }
    @IBAction func eight(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="8"
            value.text=s
        }else{
        s=s+"8"
        value.text=s
        }
    }
    
    @IBAction func nine(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="9"
            value.text=s
        }else{
        s=s+"9"
        value.text=s
        }
    }
    @IBAction func zero(sender: AnyObject) {
        if flag2==1{
            C()
            flag2=0
        }
        if value.text=="0"{
            s="0"
            value.text=s
        }else{
        s=s+"0"
        value.text=s
        }
    }
    @IBAction func dot(sender: AnyObject) {
        
        if dotf==true{
             s=s+"."
             value.text=s
             dotf=false
        }else{
            value.text=s
            
        }
    }
    
    @IBAction func add(sender: AnyObject) {
     
        flag=1
        temp=(Double)(value.text!)!
        s=""
        value.text=s
    }
    @IBAction func minus(sender: AnyObject) {
        
        flag=2
        temp=(Double)(value.text!)!
        s=""
        value.text=s
    }
    @IBAction func mulit(sender: AnyObject) {
       
        flag=3
        temp=(Double)(value.text!)!
        s=""
        value.text=s
    }
    @IBAction func Divs(sender: AnyObject) {
      
        flag=4
        temp=(Double)(value.text!)!
        s=""
        value.text=s
    }
    @IBAction func count(sender: AnyObject) {
        if flag==1{
            temp=temp+(Double)(value.text!)!
            value.text="\(temp)"
        }else{
            if flag==2{
                temp=temp-(Double)(value.text!)!
                value.text="\(temp)"
            }else{
                if flag==3{
                    temp=temp*(Double)(value.text!)!
                    value.text="\(temp)"
                }else{
                    if flag==4{
                        
                        temp=temp/(Double)(value.text!)!
                        value.text="\(temp)"
                        if value.text=="inf"
                        {
                            value.text="0不能作为除数"
                        }
                     
                    }else{
                        value.text="error!!"
                    }
                }
            
            }
        }
        flag=0
        flag2=1
    }
    func C(){
        
        s=""
        value.text=s
    }
    @IBAction func C(sender: AnyObject) {
        temp=0
        temp1=0
        s=""
        value.text=s;
    }
    @IBAction func fraction(sender: AnyObject) {
        if value.text=="0"
        {
            C()
            value.text="分母不能为0"
        }else{
            if flag==1||flag==2||flag==3||flag==4{
        temp=1.0/(Double)(value.text!)!
        value.text="\(temp)"
                if flag==1{
                    temp=temp+(Double)(value.text!)!
                    value.text="\(temp)"
                }else{
                    if flag==2{
                        temp=temp-(Double)(value.text!)!
                        value.text="\(temp)"
                    }else{
                        if flag==3{
                            temp=temp*(Double)(value.text!)!
                            value.text="\(temp)"
                        }else{
                            if flag==4{
                                
                                temp=temp/(Double)(value.text!)!
                                value.text="\(temp)"
                                if value.text=="inf"
                                {
                                    value.text="0不能作为除数"
                                }
                                
                            }else{
                                value.text="error!!"
                            }
                        }
                        
                    }
                }

        
            }else{
                temp=1.0/(Double)(value.text!)!
                value.text="\(temp)"
            }
        }
        
    }
    @IBAction func percent(sender: AnyObject) {
        if flag==1||flag==2||flag==3||flag==4 {
            temp1=temp*(Double)(value.text!)!/100
            value.text="\(temp)"
            if flag==1{
                temp=temp+temp1
                value.text="\(temp)"
            }else{
                if flag==2{
                    temp=temp-temp1
                    value.text="\(temp)"
                }else{
                    if flag==3{
                        temp=temp*temp1
                        value.text="\(temp)"
                    }else{
                        if flag==4{
                            
                            temp=temp/temp1
                            value.text="\(temp)"
                            if value.text=="inf"
                            {
                                value.text="0不能作为除数"
                            }
                            
                        }else{
                            value.text="error!!"
                        }
                    }
                    
                }
            }

            
        }else{
            temp=(Double)(value.text!)!/100
            value.text="\(temp)"
        }
    }
    @IBAction func negate(sender: AnyObject) {
       temp1 =  -1*(Double)(value.text!)!
        value.text="\(temp1)"
        
    }
    @IBAction func sqrtr(sender: AnyObject) {
        temp=(Double)(value.text!)!
        if temp<0{
            C()
            value.text="负数不能开根号！"
        }else{
            if flag==1||flag==2||flag==3||flag==4{
            value.text="\(sqrt(temp))"
                if flag==1{
                    temp=temp+(Double)(value.text!)!
                    value.text="\(temp)"
                }else{
                    if flag==2{
                        temp=temp-(Double)(value.text!)!
                        value.text="\(temp)"
                    }else{
                        if flag==3{
                            temp=temp*(Double)(value.text!)!
                            value.text="\(temp)"
                        }else{
                            if flag==4{
                                
                                temp=temp/(Double)(value.text!)!
                                value.text="\(temp)"
                                if value.text=="inf"
                                {
                                    value.text="0不能作为除数"
                                }
                                
                            }else{
                                value.text="error!!"
                            }
                        }
                        
                    }
                }

                
            }else{
            value.text="\(sqrt(temp))"
            }
        }
        
    }
   
    @IBAction func CE(sender: AnyObject) {
        s=""
        value.text=s
    }
    @IBAction func backspace(sender: AnyObject) {
        var str=value.text!
        if str != ""{
        str.removeAtIndex(str.endIndex.predecessor())
            value.text=str
        }else{
         value.text="0"
        }
        
    }
    @IBAction func MC(sender: AnyObject) {
        m=0
        m_m.text=""
        
    }
    @IBAction func MR(sender: AnyObject) {
        value.text="\(m)"
        
    }
    @IBAction func MS(sender: AnyObject) {
        m=(Double)(value.text!)!
        m_m.text="M"
        
    }
    @IBAction func Madd(sender: AnyObject) {
        temp1=m+(Double)(value.text!)!
        value.text="\(temp1)"
        if m==0{
            m_m.text=""
        }else{
            m_m.text="M"
        }
        
    }
    @IBAction func Mminus(sender: AnyObject) {
        temp1=m-(Double)(value.text!)!
        value.text="\(temp1)"
        if m==0{
            m_m.text=""
        }else{
            m_m.text="M"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

