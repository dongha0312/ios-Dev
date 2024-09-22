//
//  swift basic.swift
//  
//
//  Created by Dongha Ryu on 9/19/24.
//

import Foundation

func getUsername() -> String?{
    return "test"
}

func getTitle() -> String{
    return "title"
}

func getUserData(){
    let username: String? = getUsername()
    
    //"I will get the count if the username is not nil"
    let count = username?.count
    
    let title: String = getTitle()
    
    //"I will get the count always"
    let count2 = title.count
    
    //If usename has a value, and first character in username has a value
    let firstCharacterIsLowercased = username?.first?.isLowercase
}
