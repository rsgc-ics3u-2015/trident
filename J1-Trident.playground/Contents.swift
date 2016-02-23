// Russell Gordon
// J1 - Trident

// Notes
//
// Three inputs
//
// s = tine spacing
// t = tine height
// h = handle length
//
//
// Always 3 tines (prongs).
// So width of the fork will be 3 + 2 * s   NOTE: 2 * s because there are always two gaps between the tines
// And height of the fork is t.
//
// When to draw a tine?
// At 0 (start)
// At 3 + 2 * s - 1 (end)
// At (3 + 2 * s - 1) / 2 (middle)
// Example: s = 2
// Then width is 3 + 4 = 7
// Draw tine at 0
// Draw tine at 7 - 1 = 6
// Draw tine at 6 / 2 = 3
//
// After drawing tines, one line (same width of fork) all asterisks.
//
// Then draw fork handle.

// Input variables
let t = 2           // tine height
let s = 7           // spacing between tines
let h = 3           // length of handle

// Middle and end tine positions
let end = 3 + 2 * s - 1
let middle = end / 2

// Draw tines
for row in 0...(t - 1) {
    for column in 0...end {
        // Only draw tines at specified intervals
        if column == 0 || column == middle || column == end {
            print("*", terminator: "")
        } else {
            print(" ", terminator: "")
        }
    }
    // Finish a row with a line break
    print("")
}

// Draw solid connecting bar for trident
for column in 0...end {
    print("*", terminator: "")
}
print("")

// Now draw handle
for row in 0...(h - 1) {
    for column in 0...middle {
        // Only draw tines at specified intervals
        if column == middle {
            print("*", terminator: "")
        } else {
            print(" ", terminator: "")
        }
    }
    // Finish a row with a line break
    print("")
}
