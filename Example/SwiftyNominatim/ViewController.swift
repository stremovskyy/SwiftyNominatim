//
//  ViewController.swift
//  SwiftyNominatim
//
//  Created by kar_mad_on on 01/24/2018.
//  Copyright (c) 2018 kar_mad_on. All rights reserved.
//

import UIKit
import Nominatim

class ViewController: UIViewController {
    var nominatim = Nominatim()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let str = "{\"place_id\":\"833873\",\"licence\":\"Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright\",\"osm_type\":\"way\",\"osm_id\":\"179245540\",\"lat\":\"50.03876835\",\"lon\":\"36.2184867938686\",\"display_name\":\"45/3 к2, Науки проспект, Госпром, Харьков, Шевченковский район, Харьковский городской совет, Харьковская область, 61000-61499, Украина\",\"address\":{\"house_number\":\"45/3 к2\",\"road\":\"Науки проспект\",\"suburb\":\"Госпром\",\"city\":\"Харьков\",\"county\":\"Харьковский городской совет\",\"state\":\"Харьковская область\",\"postcode\":\"61000-61499\",\"country\":\"Украина\",\"country_code\":\"ua\"},\"boundingbox\":[\"50.0385095\",\"50.0389307\",\"36.2182205\",\"36.2187263\"]}"
        
        
        dump(nominatim.parseReversePayloadWith(jsonString: str ))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

