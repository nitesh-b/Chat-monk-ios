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
class Detail: BaseModel {
    
    var chatId : String
    var userId : String
    var typing : Bool = false
    var lastRead: Int = 0
    var mutedUntil: Int = 0
    var isDeleted = false
    var isArchived = false
    var isGroup = false
    
    enum CodingKeys: String, CodingKey{
        case chatId
        case userId
        case typing
        case lastRead
        case mutedUntil
        case isDeleted
        case isArchived
        case isGroup
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        chatId = try values.decode(String.self, forKey: .chatId)
        userId = try values.decode(String.self, forKey: .userId)
        typing = try values.decode(Bool.self, forKey: .typing)
        lastRead = try values.decodeIfPresent(Int.self, forKey: .lastRead) ?? 0
        mutedUntil = try values.decodeIfPresent(Int.self, forKey: .mutedUntil) ?? 0
        isDeleted = try values.decodeIfPresent(Bool.self, forKey: .isDeleted) ?? false
        isArchived = try values.decodeIfPresent(Bool.self, forKey: .isArchived) ?? false
        isGroup = try values.decodeIfPresent(Bool.self, forKey: .isGroup) ?? false
        try super.init(from: decoder)
    }
    
    //    //---------------------------------------------------------------------------------------------------------------------------------------------
    //    func update(typing value: Bool) {
    //
    //        if (typing == value) { return }
    //
    //        do{
    //            let realm = try Realm()
    //            try realm.safeWrite {
    //                typing = value
    //                syncRequired = true
    //                updatedAt = Date().timestamp()
    //            }
    //        }catch(let err){
    //            NSLog("REALM Exception: %@", err.localizedDescription)
    //        }
    //    }
    //
    //    //---------------------------------------------------------------------------------------------------------------------------------------------
    //    func update(lastRead value: Int) {
    //
    //        if (lastRead == value) { return }
    //
    //        do{
    //            let realm = try Realm()
    //            try realm.safeWrite {
    //                lastRead = value
    //                syncRequired = true
    //                updatedAt = Date().timestamp()
    //            }
    //        }catch(let err){
    //            NSLog("REALM Exception: %@", err.localizedDescription)
    //        }
    //    }
    //
    //    //---------------------------------------------------------------------------------------------------------------------------------------------
    //    func update(mutedUntil value: Int) {
    //
    //        if (mutedUntil == value) { return }
    //
    //        do{
    //            let realm = try Realm()
    //            try realm.safeWrite {
    //                mutedUntil = value
    //                syncRequired = true
    //                updatedAt = Date().timestamp()
    //            }
    //        }catch(let err){
    //            NSLog("REALM Exception: %@", err.localizedDescription)
    //        }
    //    }
    //    //---------------------------------------------------------------------------------------------------------------------------------------------
    //    func update(isGroup value: Bool) {
    //
    //        if(isGroup == value) {return}
    //
    //        print(value)
    //        do{
    //            let realm = try Realm()
    //            try realm.safeWrite {
    //                isGroup = value
    //                syncRequired = true
    //                updatedAt = Date().timestamp()
    //            }
    //        }catch(let err){
    //            NSLog("REALM Exception: %@", err.localizedDescription)
    //        }
    //    }
    //
    //    //---------------------------------------------------------------------------------------------------------------------------------------------
    //    func update(isDeleted value: Bool) {
    //
    //        if (isDeleted == value) { return }
    //
    //        do{
    //            let realm = try Realm()
    //            try realm.safeWrite {
    //                isDeleted = value
    //                syncRequired = true
    //                updatedAt = Date().timestamp()
    //            }
    //        }catch(let err){
    //            NSLog("REALM Exception: %@", err.localizedDescription)
    //        }
    //    }
    //
    //    //---------------------------------------------------------------------------------------------------------------------------------------------
    //    func update(isArchived value: Bool) {
    //
    //        if (isArchived == value) { return }
    //
    //        do{
    //            let realm = try Realm()
    //            try realm.safeWrite {
    //                isArchived = value
    //                syncRequired = true
    //                updatedAt = Date().timestamp()
    //            }
    //        }catch(let err){
    //            NSLog("REALM Exception: %@", err.localizedDescription)
    //        }
    //    }
}
