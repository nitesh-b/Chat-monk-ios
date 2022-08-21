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
typealias Users = [User]
class User: BaseModel {
    var firstname : String?
    var networkAudio : Int?
    var country : String?
    var pictureAt : Int?
    var lastActive : Int?
    var uploadDate : String?
    var photoUrl : String?
    var keepMedia : Int?
    var status : String?
    var email : String?
    var location : String?
    var networkVideo : Int?
    var fullname : String?
    var networkPhoto : Int?
    var phone : String?
    var lastTerminate : Int?
    var wallpaper : String?
    var lastname : String?
    var deviceToken : String?
    var loginMethod : String?

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
    }

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        firstname = try values.decodeIfPresent(String.self, forKey: .firstname)
        networkAudio = try values.decodeIfPresent(Int.self, forKey: .networkAudio)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        pictureAt = try values.decodeIfPresent(Int.self, forKey: .pictureAt)
        lastActive = try values.decodeIfPresent(Int.self, forKey: .lastActive)
        uploadDate = try values.decodeIfPresent(String.self, forKey: .uploadDate)
        photoUrl = try values.decodeIfPresent(String.self, forKey: .photoUrl)
        keepMedia = try values.decodeIfPresent(Int.self, forKey: .keepMedia)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        networkVideo = try values.decodeIfPresent(Int.self, forKey: .networkVideo)
        fullname = try values.decodeIfPresent(String.self, forKey: .fullname)
        networkPhoto = try values.decodeIfPresent(Int.self, forKey: .networkPhoto)
        phone = try values.decodeIfPresent(String.self, forKey: .phone)
        lastTerminate = try values.decodeIfPresent(Int.self, forKey: .lastTerminate)
        wallpaper = try values.decodeIfPresent(String.self, forKey: .wallpaper)
        lastname = try values.decodeIfPresent(String.self, forKey: .lastname)
        deviceToken = try values.decodeIfPresent(String.self, forKey: .deviceToken)
        loginMethod = try values.decodeIfPresent(String.self, forKey: .loginMethod)
        try super.init(from: decoder)
    }

}
