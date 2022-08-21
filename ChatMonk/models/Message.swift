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
import CoreLocation

//-------------------------------------------------------------------------------------------------------------------------------------------------
class Message: BaseModel {
    
    var chatId : String
    var userId : String
    var userFullname : String
    var userInitials : String
    var type : String
    var text : String
    
    var photoWidth: Int = 0
    var photoHeight: Int = 0
    var videoDuration: Int = 0
    var audioDuration: Int = 0
    var userPictureAt: Int = 0
    
    var latitude: CLLocationDegrees = 0
    var longitude: CLLocationDegrees = 0
    
    var groupMessage : Bool
    var isMediaQueued  : Bool
    var isMediaFailed  : Bool
    var isDeleted  : Bool
    
    enum CodingKeys: String, CodingKey {
        case chatId
        case userId
        case userFullname
        case userInitials
        case type
        case text
        
        case photoWidth
        case photoHeight
        case videoDuration
        case audioDuration
        case userPictureAt
        
        case latitude
        case longitude
        
        case groupMessage
        case isMediaQueued
        case isMediaFailed
        case isDeleted
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        chatId = try values.decodeIfPresent(String.self, forKey: .chatId) ?? ""
        userId = try values.decodeIfPresent(String.self, forKey: .userId) ?? ""
        userFullname = try values.decodeIfPresent(String.self, forKey: .userFullname) ?? ""
        userInitials = try values.decodeIfPresent(String.self, forKey: .userInitials) ?? ""
        type = try values.decodeIfPresent(String.self, forKey: .type) ?? ""
        text = try values.decodeIfPresent(String.self, forKey: .text) ?? ""
        
        photoWidth = try values.decodeIfPresent(Int.self, forKey: .photoWidth) ?? 0
        photoHeight = try values.decodeIfPresent(Int.self, forKey: .photoHeight) ?? 0
        videoDuration = try values.decodeIfPresent(Int.self, forKey: .videoDuration) ?? 0
        audioDuration = try values.decodeIfPresent(Int.self, forKey: .audioDuration) ?? 0
        userPictureAt = try values.decodeIfPresent(Int.self, forKey: .userPictureAt) ?? 0
        
        latitude = try values.decodeIfPresent(Double.self, forKey: .latitude) ?? 0.0
        longitude = try values.decodeIfPresent(Double.self, forKey: .longitude) ?? 0.0
        
        groupMessage = try values.decodeIfPresent(Bool.self, forKey: .groupMessage) ?? false
        isMediaQueued = try values.decodeIfPresent(Bool.self, forKey: .isMediaQueued) ?? false
        isMediaFailed = try values.decodeIfPresent(Bool.self, forKey: .isMediaFailed) ?? false
        isDeleted = try values.decodeIfPresent(Bool.self, forKey: .isDeleted) ?? false
        try super.init(from: decoder)
    }
}
