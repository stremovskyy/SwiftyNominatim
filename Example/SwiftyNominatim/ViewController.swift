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
        
        let starit = "[{\"place_id\":\"1844149\",\"licence\":\"Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright\",\"osm_type\":\"node\",\"osm_id\":\"5357674284\",\"boundingbox\":[\"50.0385017\",\"50.0386017\",\"36.2184484\",\"36.2185484\"],\"lat\":\"50.0385517\",\"lon\":\"36.2184984\",\"display_name\":\"Компания Megakit, 45/3 к2, Науки проспект, Павлово Поле, Харьков, Шевченковский район, Харьковский городской совет, Харьковская область, 61000-61499, Украина\",\"place_rank\":\"30\",\"category\":\"office\",\"type\":\"it\",\"importance\":0.101,\"address\":{\"address29\":\"Компания Megakit\",\"house_number\":\"45/3 к2\",\"road\":\"Науки проспект\",\"suburb\":\"Павлово Поле\",\"city\":\"Харьков\",\"county\":\"Харьковский городской совет\",\"state\":\"Харьковская область\",\"postcode\":\"61000-61499\",\"country\":\"Украина\",\"country_code\":\"ua\"},\"extratags\":{\"website\":\"http://megakit.pro\",\"wheelchair\":\"yes\",\"description\":\"Специализируемся на автоматизации и интеграции малого и среднего транспортного бизнеса. Разработка мобильных приложений. Кроссплатформенные решения. Облачные технологии и геотаргетинг. Богатый опыт разработки комплексных систем автоматизации.\",\"opening_hours\":\"Mo-Su 10:00-20:00\"},\"namedetails\":{\"name\":\"Компания Megakit\"}}]"
        
        let loockup = "[{\"place_id\":\"1700641\",\"licence\":\"Data © OpenStreetMap contributors, ODbL 1.0. https://www.openstreetmap.org/copyright\",\"osm_type\":\"way\",\"osm_id\":\"487975493\",\"lat\":\"50.0122075\",\"lon\":\"36.2801562\",\"display_name\":\"Сагайдачного улица, Журавлёвка, Харьков, Київський район, Харьковский городской совет, Харьковская область, 61033, Украина\",\"class\":\"highway\",\"type\":\"residential\",\"importance\":\"0.1\",\"address\":{\"road\":\"Сагайдачного улица\",\"suburb\":\"Журавлёвка\",\"city\":\"Харьков\",\"county\":\"Харьковский городской совет\",\"state\":\"Харьковская область\",\"postcode\":\"61033\",\"country\":\"Украина\",\"country_code\":\"ua\"},\"extratags\":{},\"namedetails\":{\"name\":\"Сагайдачного вулиця\",\"name:en\":\"Sahaydachnoho Street\",\"name:ru\":\"Сагайдачного улица\",\"name:uk\":\"Сагайдачного вулиця\"}}]"
        
        dump(nominatim.parseReversePayloadWith(jsonString: str ))
        dump(nominatim.parseStraightPayloadWith(jsonString: starit))
        dump(nominatim.parseLookupPayloadWith(jsonString: loockup))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

