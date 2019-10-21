//
//  Faculity.swift
//  SwiftFaculity
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

enum FacultyError: Error
{
    case InvalidSalary(salary: Double)
    case InvalidSalaryWithMessage(message: String)
    case InvalidFaculityName(faculityName: String)
    case InvalidEmployeeId(faculityId: Int)
}
class Faculity
{
    var faculityId: Int
    var faculityName: String
    var salary: Double
    
    init(faculityId: Int, faculityName: String, salary: Double) throws
    {
        if faculityId <= 0
    {
      throw FacultyError.InvalidEmployeeId(faculityId: faculityId)
    }
        self.faculityId = faculityId
        if faculityId < 10
        {
            throw FacultyError.InvalidEmployeeId(faculityId: faculityId)
        }
        if faculityName.count < 7
        {
            throw FacultyError.InvalidFaculityName(faculityName: faculityName)
        }
         self.faculityName = faculityName
        if salary < 1000
        {
            throw FacultyError.InvalidSalary(salary: salary)
        }
        self.salary = salary
        
        
        if salary < 1000
        {
            throw FacultyError.InvalidSalaryWithMessage(message: "Invalid Salary : \(salary) <  1000")
        }
        self.salary = salary
    }
    func setSalary(salary: Double) throws
    {
        if salary < 1000
        {
            throw FacultyError.InvalidSalaryWithMessage(message: "Invalid salary : \(salary) < 1000")
        }
        
        self.salary = salary
    }
    
    func setfaculityName(name: String)
    {
        defer
        {
            print("Defer - 1")
            
        }
        print("****** Start ******")
        do{
            if name.count < 10
            {
                throw FacultyError.InvalidFaculityName(faculityName: name)
                
            }
            self.faculityName = name
        }catch FacultyError.InvalidFaculityName(let faculityName)
        {
            print("Invalid Faculity Name: \(faculityName)")
        }catch{
            print(error.localizedDescription)
        }
        print("******* END* *****")
    }
    
    
}
    

    

