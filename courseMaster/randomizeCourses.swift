//
//  randomizeCourses.swift
//  courseMaster
//
//  Created by Cassie on 9/28/23.
//

import Foundation

class BasicCourse {
    
    var num_jumps: Int
    var horse_size: Int
    var arena_shape: Int
    var num_oxers: Int
    var num_lines = 0
    var num_lines_with_oxers = 0
    var lines = [Int]()
    var lines_oxers_bool = [Bool]()
    init(numJumps: Int, horseSize: Int, arenaShape: Int, numOxers: Int) {
        // if not initialized, maybe have a func that initializes some random vars for u
        self.num_jumps = numJumps
        self.horse_size = horseSize
        self.num_oxers = numOxers
        self.arena_shape = arenaShape
        
        if (self.num_jumps > 9) // for now, cannot have too many jumps
        {
            self.num_jumps = 9
        }
        
        if (self.num_oxers > self.num_jumps)
        { // not allowed
            self.num_oxers = self.num_jumps
        }
        
    }
    
    func makeBasicCourse() {
        self.num_lines = numOfLines()
        self.num_lines_with_oxers = numLinesWithOxers(numLines: self.num_lines)
        self.createJumpArray()
        
        
    }

    func numOfLines() -> Int {
        if (self.num_jumps <= 3) {
            return 0 }
        else if (self.num_jumps == 4) {
            return 1 }
        else {
            return 2 }
    }
    
    func createJumpArray() {
        // each entry will be the number of jumps in line and yes/no (0/1) for oxer
        var availableJumps = self.num_jumps
        var availableOxers = self.num_oxers
        for i in 0...self.num_lines {
            // decide how many jumps in each line - up to 3 in each
            if (i >= 2) {
                return }
            if (availableJumps >= 6)
            {
                self.lines[i] = 3
                availableJumps = availableJumps - 3
            }
            else
            {
                self.lines[i] = 2
                availableJumps = availableJumps - 2
            }
            
            if (availableOxers > 0)
            {
                self.lines_oxers_bool[i] = true
                availableOxers = availableOxers - 1
            }
            else
            {
                self.lines_oxers_bool[i] = false
            }
        }
    }
    
    func locationOfLines() {
        // all will be vertical for now
    }
    
    func locationOfSingleJumps() {
        // up to 2 diagonal and one sideways (at top OR bottom!)
    }

    func numLinesWithOxers(numLines: Int) -> Int {
        var linesWithOxers = 0
        if (self.num_oxers < numLines)
        {
            // do no singular oxers
            linesWithOxers = self.num_oxers
        }
        else
        {
            // do singular oxers on their own
            // randomize whether or not both lines have oxers
            let which = Double.random(in: 0...1)
            if (which <= 0.5)
            {
                // one line has no oxers
                linesWithOxers = numLines - 1
            }
            else
            {
                // all lines have oxers
                linesWithOxers = numLines
            }
        }
        return linesWithOxers
        
    }

    func distanceOfLine(numLines: Int) -> Int {
    // 4 horse sizes (based off of hunterjudgecanada.com)
    // small pony (1), medium pony (2), large pony (3), horse (4)
        
    // decide how many lines should have oxers
        
    
        if (self.horse_size == 1)
        {
            // horse is small pony: 14 ft
        }
    
    
        return 0
    }

}

