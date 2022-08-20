//
// Copyright (c) 2020 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

//-------------------------------------------------------------------------------------------------------------------------------------------------
class Person: BaseModel {
    var firstname : String?
    var docName : String?
    var networkAudio : Int?
    var country : String?
    var loaded : Bool?
    var pictureAt : Int?
    var lastActive : Int?
    var uploadDate : String?
    var photoUrl : String?
    var keepMedia : Int?
    var status : String?
    var email : String?
    var oneSignalId : String?
    var location : String?
    var networkVideo : Int?
    var fullname : String?
    var docId : String?
    var networkPhoto : Int?
    var phone : String?
    var lastTerminate : Int?
    var wallpaper : String?
    var lastname : String?
    var deviceToken : String?
    var loginMethod : String?
    var companyId : String?

    enum CodingKeys: String, CodingKey {

        case firstname = "firstname"
        case docName = "docName"
        case networkAudio = "networkAudio"
        case country = "country"
        case loaded = "loaded"
        case pictureAt = "pictureAt"
        case lastActive = "lastActive"
        case uploadDate = "uploadDate"
        case photoUrl = "photoUrl"
        case keepMedia = "keepMedia"
        case status = "status"
        case email = "email"
        case oneSignalId = "oneSignalId"
        case location = "location"
        case networkVideo = "networkVideo"
        case fullname = "fullname"
        case docId = "docId"
        case networkPhoto = "networkPhoto"
        case phone = "phone"
        case objectId = "objectId"
        case lastTerminate = "lastTerminate"
        case wallpaper = "wallpaper"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case lastname = "lastname"
        case deviceToken = "deviceToken"
        case loginMethod = "loginMethod"
        case companyId = "companyId"
    }

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        firstname = try values.decodeIfPresent(String.self, forKey: .firstname)
        docName = try values.decodeIfPresent(String.self, forKey: .docName)
        networkAudio = try values.decodeIfPresent(Int.self, forKey: .networkAudio)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        loaded = try values.decodeIfPresent(Bool.self, forKey: .loaded)
        pictureAt = try values.decodeIfPresent(Int.self, forKey: .pictureAt)
        lastActive = try values.decodeIfPresent(Int.self, forKey: .lastActive)
        uploadDate = try values.decodeIfPresent(String.self, forKey: .uploadDate)
        photoUrl = try values.decodeIfPresent(String.self, forKey: .photoUrl)
        keepMedia = try values.decodeIfPresent(Int.self, forKey: .keepMedia)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        oneSignalId = try values.decodeIfPresent(String.self, forKey: .oneSignalId)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        networkVideo = try values.decodeIfPresent(Int.self, forKey: .networkVideo)
        fullname = try values.decodeIfPresent(String.self, forKey: .fullname)
        docId = try values.decodeIfPresent(String.self, forKey: .docId)
        networkPhoto = try values.decodeIfPresent(Int.self, forKey: .networkPhoto)
        phone = try values.decodeIfPresent(String.self, forKey: .phone)
       
        lastTerminate = try values.decodeIfPresent(Int.self, forKey: .lastTerminate)
        wallpaper = try values.decodeIfPresent(String.self, forKey: .wallpaper)
        lastname = try values.decodeIfPresent(String.self, forKey: .lastname)
        deviceToken = try values.decodeIfPresent(String.self, forKey: .deviceToken)
        loginMethod = try values.decodeIfPresent(String.self, forKey: .loginMethod)
        companyId = try values.decodeIfPresent(String.self, forKey: .companyId)
        try super.init(from: decoder)
    }

}

    
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    class func lastUpdatedAt() -> Int {
//        var lastUpdatedAt: Int = 0
//        do{
//            let realm = try Realm()
//            let predicate = NSPredicate(format: "objectId != %@", AuthUser.userId())
//            let object = realm.objects(Person.self).filter(predicate).sorted(byKeyPath: "updatedAt").last
//            lastUpdatedAt = object?.updatedAt ?? 0
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//        return lastUpdatedAt
//    }
//
//
//    // MARK: -
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func initials() -> String {
//
//        let initial1 = (firstname.count != 0) ? firstname.prefix(1) : ""
//        let initial2 = (lastname.count != 0) ? lastname.prefix(1) : ""
//
//        print("initials inside person object \(initial1), \(initial2)")
//        return "\(initial1)\(initial2)"
//    }
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func lastActiveText() -> String {
//
//
//        if (lastActive < lastTerminate) {
//            let elapsed = Convert.timestampToElapsed(lastTerminate)
//            return "last active: \(elapsed)"
//        }
//
//        return "online now"
//    }
//
//    // MARK: -
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(pictureAt value: Int) {
//
//        if (pictureAt == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                pictureAt = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//    }
//
//    func update(photoUrl value: String) {
//
//        if (photoUrl == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                photoUrl = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//    }
//    func update(deviceToken value: String) {
//
//        if (deviceToken == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                deviceToken = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//    }
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(status value: String) {
//
//        if (status == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                status = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//    }
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(keepMedia value: Int) {
//
//        if (keepMedia == value) { return }
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                keepMedia = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//    }
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(networkPhoto value: Int) {
//
//        if (networkPhoto == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                networkPhoto = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//    }
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(networkVideo value: Int) {
//
//        if (networkVideo == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                networkVideo = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//    }
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(networkAudio value: Int) {
//
//        if (networkAudio == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                networkAudio = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//    }
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(wallpaper value: String) {
//
//        if (wallpaper == value) { return }
//
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                wallpaper = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//    }
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(oneSignalId value: String) {
//
//        if (oneSignalId == value) { return }
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//                oneSignalId = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//    }
//
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(lastActive value: Int) {
//
//        if (lastActive == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//
//                lastActive = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//    }
//
//    //---------------------------------------------------------------------------------------------------------------------------------------------
//    func update(lastTerminate value: Int) {
//
//        if (lastTerminate == value) { return }
//
//        do{
//            let realm = try Realm()
//            try realm.safeWrite {
//
//                lastTerminate = value
//                syncRequired = true
//                updatedAt = Date().timestamp()
//            }
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//    }
//
//    //Getters
//
//    static func getFullName(chat: Chat) -> String{
//        var fullName : String = ""
//
//        do{
//
//            let realm = try Realm()
//            var predicate = NSPredicate()
//            if(chat.isGroup){
//                fullName = chat.details
//            }else{
//                predicate = NSPredicate(format: "objectId == %@", chat.userId)
//                let object = realm.objects(Person.self).filter(predicate).sorted(byKeyPath: "updatedAt").first
//                fullName  = object?.fullname ?? chat.details
//            }
//
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//        return fullName
//    }
//
//    static func getFullName(message: Message) -> String{
//        var fullName : String = ""
//        do{
//            let realm = try Realm()
//            var predicate = NSPredicate()
//
//            predicate = NSPredicate(format: "objectId == %@", message.userId)
//            let object = realm.objects(Person.self).filter(predicate).first
//            fullName =  object?.fullname ?? message.userFullname
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//        return fullName
//
//    }
//
//    static func getFullName(userId: String) -> String?{
//        var fullName : String = ""
//        do{
//            let realm = try Realm()
//            var predicate = NSPredicate()
//
//            predicate = NSPredicate(format: "objectId == %@", userId)
//            let object = realm.objects(Person.self).filter(predicate).first
//            if let object = object {
//                fullName =  object.fullname
//            }
//
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//        return fullName
//
//
//    }
//
//    static func getPerson(userId: String) -> Person?{
//        var person : Person?
//        do{
//            let realm = try Realm()
//            var predicate = NSPredicate()
//
//            predicate = NSPredicate(format: "objectId == %@", userId)
//            let object = realm.objects(Person.self).filter(predicate).first
//            if let object = object {
//                person =  object.detached()
//            }
//
//        }catch(let err){
//            NSLog("REALM Exception: %@", err.localizedDescription)
//        }
//
//        return person
//
//
//    }
//}
