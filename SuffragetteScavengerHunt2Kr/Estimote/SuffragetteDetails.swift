//
//  SuffragetteDetails.swift
//  SuffragetteScavengerHunt2Kr
//
//  Created by Matthew Graham on 4/13/17.
//  Copyright © 2017 RIT Museum Studies Program. All rights reserved.
//

import Foundation

class SuffragetteDetails{
    static let instance = SuffragetteDetails()
    let suffragetteInfo: [String:[String:String]]
    private init(){
        self.suffragetteInfo = [
            // Ice
            "7c11ce0b9d69cdbc97b224f8ac696f00": ["name":"Susan Brownell Anthony", "image":"susanB", "description":"Rochester’s most legendary suffragist, Susan Brownell Anthony was a national leader who campaigned tirelessly on behalf of women’s rights and other reforms. Driven by the conviction that “Failure is Impossible,” she dedicated her life to the cause of woman suffrage, paving the way for the 19th Amendment to the U.S. Constitution, named in her honor, granting all U.S. women the right to vote. "],
            
            // Blueberry
            "d34aaca8bcfbd471372047d3df875418": ["name":"Ida Breiman", "image":"ida", "description":"In 1913, Russian--‐born garment worker Ida Breiman joined a labor strike in an effort to secure better working conditions, shorter hours, and higher wages for Rochester factory workers. Breiman was killed on February 5 when a sweatshop owner fired a shotgun into a crowd of strikers on the street, propelling her to the status of labor martyr. She was 18 years old. "],
            
            // Mint
            "c232d68887e4cd5315500fc4a59e1f15": ["name":"Kate Gleason", "image":"kateG", "description":"Kate Gleason was the first woman admitted to the engineering program at Cornell University and the first woman elected to the American Society of Mechanical Engineers. As salesperson and treasurer for Gleason Works, she was instrumental in globalizing her father’s business. She also served as a bank president and built fireproof concrete housing in East Rochester, which still stands today. "],
            
            // Candy
            "e16dce819ae647e98a518de190702c05": ["name":"Hester C. Jeffrey", "image":"hester", "description":"Hester Jeffrey was an activist in the local temperance and woman suffrage movements and an advocate for the rights of African--‐American women. She served as county superintendent and Third Ward secretary of the Women’s Christian Temperance Union and organized several clubs for black women, including the Hester C. Jeffrey Club, which raised money to send black women to college."],
            
            // Beetroot
            "1b853d12257e7857eb41eff1577f6214": ["name":"Fannie B. Williams", "image":"fannie", "description":"Frances “Fannie” Barrier Williams was the first African American graduate of Brockport Normal School (now the College at Brockport), earning her teaching degree in 1870. After moving to Chicago, she helped to found the National Association for the Advancement of Colored People (NAACP) and the National Association of Colored Women (NACW). She is buried at Brockport’s High Street Cemetery."],
            
            // Lemon
            "8c5aee919dceac5f58f89dece902a82d": ["name":"Martha Matilda Harper", "image":"martha", "description":"Martha Matilda Harper, a Canadian immigrant and domestic servant, opened Rochester’s first beauty parlor in 1888. She developed a line of hair products, invented the reclining shampoo chair, and pioneered the concept of franchising, providing working--‐class women economic independence as Harper Method shop owners. By 1920, there were more than 500 Harper salons worldwide."],
            
        ]
    }
}
