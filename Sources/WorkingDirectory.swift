/*
 Helps solve issue of working directories in Xcode
 */

#if os(Linux)
let workingDirectory = "./"
#else
let workingDirectory: String = {
    let parent = #file.characters.split(separator: "/").map(String.init).dropLast().joined(separator: "/")
    let path = "/\(parent)/../" // needs to be directly under Sources
    return path
}()
#endif

