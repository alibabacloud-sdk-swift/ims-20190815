import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddClientIdToOIDCProviderRequest : Tea.TeaModel {
    public var clientId: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["OIDCProviderName"] as? String {
            self.OIDCProviderName = value
        }
    }
}

public class AddClientIdToOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["ClientIds"] as? String {
                self.clientIds = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Fingerprints"] as? String {
                self.fingerprints = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IssuanceLimitTime"] as? Int64 {
                self.issuanceLimitTime = value
            }
            if let value = dict["IssuerUrl"] as? String {
                self.issuerUrl = value
            }
            if let value = dict["OIDCProviderName"] as? String {
                self.OIDCProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var OIDCProvider: AddClientIdToOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProvider"] as? [String: Any?] {
            var model = AddClientIdToOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(value)
            self.OIDCProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddClientIdToOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddClientIdToOIDCProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddClientIdToOIDCProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFingerprintToOIDCProviderRequest : Tea.TeaModel {
    public var fingerprint: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["OIDCProviderName"] as? String {
            self.OIDCProviderName = value
        }
    }
}

public class AddFingerprintToOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["ClientIds"] as? String {
                self.clientIds = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Fingerprints"] as? String {
                self.fingerprints = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IssuanceLimitTime"] as? Int64 {
                self.issuanceLimitTime = value
            }
            if let value = dict["IssuerUrl"] as? String {
                self.issuerUrl = value
            }
            if let value = dict["OIDCProviderName"] as? String {
                self.OIDCProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var OIDCProvider: AddFingerprintToOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProvider"] as? [String: Any?] {
            var model = AddFingerprintToOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(value)
            self.OIDCProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddFingerprintToOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFingerprintToOIDCProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddFingerprintToOIDCProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddUserToGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class AddUserToGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddUserToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserToGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddUserToGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindMFADeviceRequest : Tea.TeaModel {
    public var authenticationCode1: String?

    public var authenticationCode2: String?

    public var serialNumber: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticationCode1 != nil {
            map["AuthenticationCode1"] = self.authenticationCode1!
        }
        if self.authenticationCode2 != nil {
            map["AuthenticationCode2"] = self.authenticationCode2!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthenticationCode1"] as? String {
            self.authenticationCode1 = value
        }
        if let value = dict["AuthenticationCode2"] as? String {
            self.authenticationCode2 = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class BindMFADeviceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BindMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindMFADeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindMFADeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangePasswordRequest : Tea.TeaModel {
    public var newPassword: String?

    public var oldPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
        }
        if self.oldPassword != nil {
            map["OldPassword"] = self.oldPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["OldPassword"] as? String {
            self.oldPassword = value
        }
    }
}

public class ChangePasswordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChangePasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangePasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangePasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccessKeyRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class CreateAccessKeyResponseBody : Tea.TeaModel {
    public class AccessKey : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var createDate: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var accessKey: CreateAccessKeyResponseBody.AccessKey?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKey"] as? [String: Any?] {
            var model = CreateAccessKeyResponseBody.AccessKey()
            model.fromMap(value)
            self.accessKey = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccessKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppSecretRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
    }
}

public class CreateAppSecretResponseBody : Tea.TeaModel {
    public class AppSecret : Tea.TeaModel {
        public var appId: String?

        public var appSecretId: String?

        public var appSecretValue: String?

        public var createDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appSecretId != nil {
                map["AppSecretId"] = self.appSecretId!
            }
            if self.appSecretValue != nil {
                map["AppSecretValue"] = self.appSecretValue!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppSecretId"] as? String {
                self.appSecretId = value
            }
            if let value = dict["AppSecretValue"] as? String {
                self.appSecretValue = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
        }
    }
    public var appSecret: CreateAppSecretResponseBody.AppSecret?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecret?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppSecret"] as? [String: Any?] {
            var model = CreateAppSecretResponseBody.AppSecret()
            model.fromMap(value)
            self.appSecret = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAppSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAppSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public var accessTokenValidity: Int32?

    public var appName: String?

    public var appType: String?

    public var displayName: String?

    public var isMultiTenant: Bool?

    public var predefinedScopes: String?

    public var redirectUris: String?

    public var refreshTokenValidity: Int32?

    public var requiredScopes: String?

    public var secretRequired: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenValidity != nil {
            map["AccessTokenValidity"] = self.accessTokenValidity!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.isMultiTenant != nil {
            map["IsMultiTenant"] = self.isMultiTenant!
        }
        if self.predefinedScopes != nil {
            map["PredefinedScopes"] = self.predefinedScopes!
        }
        if self.redirectUris != nil {
            map["RedirectUris"] = self.redirectUris!
        }
        if self.refreshTokenValidity != nil {
            map["RefreshTokenValidity"] = self.refreshTokenValidity!
        }
        if self.requiredScopes != nil {
            map["RequiredScopes"] = self.requiredScopes!
        }
        if self.secretRequired != nil {
            map["SecretRequired"] = self.secretRequired!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenValidity"] as? Int32 {
            self.accessTokenValidity = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["IsMultiTenant"] as? Bool {
            self.isMultiTenant = value
        }
        if let value = dict["PredefinedScopes"] as? String {
            self.predefinedScopes = value
        }
        if let value = dict["RedirectUris"] as? String {
            self.redirectUris = value
        }
        if let value = dict["RefreshTokenValidity"] as? Int32 {
            self.refreshTokenValidity = value
        }
        if let value = dict["RequiredScopes"] as? String {
            self.requiredScopes = value
        }
        if let value = dict["SecretRequired"] as? Bool {
            self.secretRequired = value
        }
    }
}

public class CreateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Required"] as? Bool {
                            self.required_ = value
                        }
                    }
                }
                public var predefinedScope: [CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScope"] as? [Any?] {
                        var tmp : [CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in value {
                            if v != nil {
                                var model = CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PredefinedScopes"] as? [String: Any?] {
                    var model = CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes()
                    model.fromMap(value)
                    self.predefinedScopes = model
                }
            }
        }
        public class RedirectUris : Tea.TeaModel {
            public var redirectUri: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.redirectUri != nil {
                    map["RedirectUri"] = self.redirectUri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RedirectUri"] as? [String] {
                    self.redirectUri = value
                }
            }
        }
        public var accessTokenValidity: Int32?

        public var accountId: String?

        public var appId: String?

        public var appName: String?

        public var appType: String?

        public var createDate: String?

        public var delegatedScope: CreateApplicationResponseBody.Application.DelegatedScope?

        public var displayName: String?

        public var isMultiTenant: Bool?

        public var redirectUris: CreateApplicationResponseBody.Application.RedirectUris?

        public var refreshTokenValidity: Int32?

        public var secretRequired: Bool?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
            try self.redirectUris?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.isMultiTenant != nil {
                map["IsMultiTenant"] = self.isMultiTenant!
            }
            if self.redirectUris != nil {
                map["RedirectUris"] = self.redirectUris?.toMap()
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenValidity"] as? Int32 {
                self.accessTokenValidity = value
            }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DelegatedScope"] as? [String: Any?] {
                var model = CreateApplicationResponseBody.Application.DelegatedScope()
                model.fromMap(value)
                self.delegatedScope = model
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["IsMultiTenant"] as? Bool {
                self.isMultiTenant = value
            }
            if let value = dict["RedirectUris"] as? [String: Any?] {
                var model = CreateApplicationResponseBody.Application.RedirectUris()
                model.fromMap(value)
                self.redirectUris = model
            }
            if let value = dict["RefreshTokenValidity"] as? Int32 {
                self.refreshTokenValidity = value
            }
            if let value = dict["SecretRequired"] as? Bool {
                self.secretRequired = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var application: CreateApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Application"] as? [String: Any?] {
            var model = CreateApplicationResponseBody.Application()
            model.fromMap(value)
            self.application = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public var comments: String?

    public var displayName: String?

    public var groupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comments"] as? String {
            self.comments = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var groupId: String?

        public var groupName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var group: CreateGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Group"] as? [String: Any?] {
            var model = CreateGroupResponseBody.Group()
            model.fromMap(value)
            self.group = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLoginProfileRequest : Tea.TeaModel {
    public var MFABindRequired: Bool?

    public var password: String?

    public var passwordResetRequired: Bool?

    public var status: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.MFABindRequired != nil {
            map["MFABindRequired"] = self.MFABindRequired!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordResetRequired != nil {
            map["PasswordResetRequired"] = self.passwordResetRequired!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFABindRequired"] as? Bool {
            self.MFABindRequired = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["PasswordResetRequired"] as? Bool {
            self.passwordResetRequired = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class CreateLoginProfileResponseBody : Tea.TeaModel {
    public class LoginProfile : Tea.TeaModel {
        public var MFABindRequired: Bool?

        public var passwordResetRequired: Bool?

        public var status: String?

        public var updateDate: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.MFABindRequired != nil {
                map["MFABindRequired"] = self.MFABindRequired!
            }
            if self.passwordResetRequired != nil {
                map["PasswordResetRequired"] = self.passwordResetRequired!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MFABindRequired"] as? Bool {
                self.MFABindRequired = value
            }
            if let value = dict["PasswordResetRequired"] as? Bool {
                self.passwordResetRequired = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["UserPrincipalName"] as? String {
                self.userPrincipalName = value
            }
        }
    }
    public var loginProfile: CreateLoginProfileResponseBody.LoginProfile?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginProfile != nil {
            map["LoginProfile"] = self.loginProfile?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginProfile"] as? [String: Any?] {
            var model = CreateLoginProfileResponseBody.LoginProfile()
            model.fromMap(value)
            self.loginProfile = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoginProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLoginProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOIDCProviderRequest : Tea.TeaModel {
    public var clientIds: String?

    public var description_: String?

    public var fingerprints: String?

    public var issuanceLimitTime: Int64?

    public var issuerUrl: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientIds != nil {
            map["ClientIds"] = self.clientIds!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fingerprints != nil {
            map["Fingerprints"] = self.fingerprints!
        }
        if self.issuanceLimitTime != nil {
            map["IssuanceLimitTime"] = self.issuanceLimitTime!
        }
        if self.issuerUrl != nil {
            map["IssuerUrl"] = self.issuerUrl!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? String {
            self.clientIds = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Fingerprints"] as? String {
            self.fingerprints = value
        }
        if let value = dict["IssuanceLimitTime"] as? Int64 {
            self.issuanceLimitTime = value
        }
        if let value = dict["IssuerUrl"] as? String {
            self.issuerUrl = value
        }
        if let value = dict["OIDCProviderName"] as? String {
            self.OIDCProviderName = value
        }
    }
}

public class CreateOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["ClientIds"] as? String {
                self.clientIds = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Fingerprints"] as? String {
                self.fingerprints = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IssuanceLimitTime"] as? Int64 {
                self.issuanceLimitTime = value
            }
            if let value = dict["IssuerUrl"] as? String {
                self.issuerUrl = value
            }
            if let value = dict["OIDCProviderName"] as? String {
                self.OIDCProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var OIDCProvider: CreateOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProvider"] as? [String: Any?] {
            var model = CreateOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(value)
            self.OIDCProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOIDCProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateOIDCProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSAMLProviderRequest : Tea.TeaModel {
    public var description_: String?

    public var encodedSAMLMetadataDocument: String?

    public var SAMLProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encodedSAMLMetadataDocument != nil {
            map["EncodedSAMLMetadataDocument"] = self.encodedSAMLMetadataDocument!
        }
        if self.SAMLProviderName != nil {
            map["SAMLProviderName"] = self.SAMLProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EncodedSAMLMetadataDocument"] as? String {
            self.encodedSAMLMetadataDocument = value
        }
        if let value = dict["SAMLProviderName"] as? String {
            self.SAMLProviderName = value
        }
    }
}

public class CreateSAMLProviderResponseBody : Tea.TeaModel {
    public class SAMLProvider : Tea.TeaModel {
        public var arn: String?

        public var createDate: String?

        public var description_: String?

        public var SAMLProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.SAMLProviderName != nil {
                map["SAMLProviderName"] = self.SAMLProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["SAMLProviderName"] as? String {
                self.SAMLProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var requestId: String?

    public var SAMLProvider: CreateSAMLProviderResponseBody.SAMLProvider?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLProvider != nil {
            map["SAMLProvider"] = self.SAMLProvider?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLProvider"] as? [String: Any?] {
            var model = CreateSAMLProviderResponseBody.SAMLProvider()
            model.fromMap(value)
            self.SAMLProvider = model
        }
    }
}

public class CreateSAMLProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSAMLProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSAMLProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var comments: String?

    public var displayName: String?

    public var email: String?

    public var mobilePhone: String?

    public var tag: [CreateUserRequest.Tag]?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.mobilePhone != nil {
            map["MobilePhone"] = self.mobilePhone!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comments"] as? String {
            self.comments = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["MobilePhone"] as? String {
            self.mobilePhone = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateUserRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateUserRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public class Tag : Tea.TeaModel {
                public var tagKey: String?

                public var tagValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagKey != nil {
                        map["TagKey"] = self.tagKey!
                    }
                    if self.tagValue != nil {
                        map["TagValue"] = self.tagValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public var tag: [CreateUserResponseBody.User.Tags.Tag]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tag != nil {
                    var tmp : [Any] = []
                    for k in self.tag! {
                        tmp.append(k.toMap())
                    }
                    map["Tag"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Tag"] as? [Any?] {
                    var tmp : [CreateUserResponseBody.User.Tags.Tag] = []
                    for v in value {
                        if v != nil {
                            var model = CreateUserResponseBody.User.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tag = tmp
                }
            }
        }
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var lastLoginDate: String?

        public var mobilePhone: String?

        public var provisionType: String?

        public var tags: CreateUserResponseBody.User.Tags?

        public var updateDate: String?

        public var userId: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tags?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.lastLoginDate != nil {
                map["LastLoginDate"] = self.lastLoginDate!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags?.toMap()
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["LastLoginDate"] as? String {
                self.lastLoginDate = value
            }
            if let value = dict["MobilePhone"] as? String {
                self.mobilePhone = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["Tags"] as? [String: Any?] {
                var model = CreateUserResponseBody.User.Tags()
                model.fromMap(value)
                self.tags = model
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserPrincipalName"] as? String {
                self.userPrincipalName = value
            }
        }
    }
    public var requestId: String?

    public var user: CreateUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = CreateUserResponseBody.User()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class CreateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVirtualMFADeviceRequest : Tea.TeaModel {
    public var virtualMFADeviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.virtualMFADeviceName != nil {
            map["VirtualMFADeviceName"] = self.virtualMFADeviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VirtualMFADeviceName"] as? String {
            self.virtualMFADeviceName = value
        }
    }
}

public class CreateVirtualMFADeviceResponseBody : Tea.TeaModel {
    public class VirtualMFADevice : Tea.TeaModel {
        public var base32StringSeed: String?

        public var QRCodePNG: String?

        public var serialNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.base32StringSeed != nil {
                map["Base32StringSeed"] = self.base32StringSeed!
            }
            if self.QRCodePNG != nil {
                map["QRCodePNG"] = self.QRCodePNG!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Base32StringSeed"] as? String {
                self.base32StringSeed = value
            }
            if let value = dict["QRCodePNG"] as? String {
                self.QRCodePNG = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
        }
    }
    public var requestId: String?

    public var virtualMFADevice: CreateVirtualMFADeviceResponseBody.VirtualMFADevice?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.virtualMFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.virtualMFADevice != nil {
            map["VirtualMFADevice"] = self.virtualMFADevice?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VirtualMFADevice"] as? [String: Any?] {
            var model = CreateVirtualMFADeviceResponseBody.VirtualMFADevice()
            model.fromMap(value)
            self.virtualMFADevice = model
        }
    }
}

public class CreateVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualMFADeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVirtualMFADeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccessKeyRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class DeleteAccessKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccessKeyInRecycleBinRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DeleteAccessKeyInRecycleBinResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAccessKeyInRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessKeyInRecycleBinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessKeyInRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppSecretRequest : Tea.TeaModel {
    public var appId: String?

    public var appSecretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appSecretId != nil {
            map["AppSecretId"] = self.appSecretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppSecretId"] as? String {
            self.appSecretId = value
        }
    }
}

public class DeleteAppSecretResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAppSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAppSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
    }
}

public class DeleteApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
    }
}

public class DeleteGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLoginProfileRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class DeleteLoginProfileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLoginProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteLoginProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteOIDCProviderRequest : Tea.TeaModel {
    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProviderName"] as? String {
            self.OIDCProviderName = value
        }
    }
}

public class DeleteOIDCProviderResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOIDCProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteOIDCProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePasskeyRequest : Tea.TeaModel {
    public var passkeyId: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passkeyId != nil {
            map["PasskeyId"] = self.passkeyId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PasskeyId"] as? String {
            self.passkeyId = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class DeletePasskeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePasskeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePasskeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePasskeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSAMLProviderRequest : Tea.TeaModel {
    public var SAMLProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.SAMLProviderName != nil {
            map["SAMLProviderName"] = self.SAMLProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SAMLProviderName"] as? String {
            self.SAMLProviderName = value
        }
    }
}

public class DeleteSAMLProviderResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteSAMLProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSAMLProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSAMLProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var userId: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserInRecycleBinRequest : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DeleteUserInRecycleBinResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteUserInRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserInRecycleBinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserInRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVirtualMFADeviceRequest : Tea.TeaModel {
    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
    }
}

public class DeleteVirtualMFADeviceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualMFADeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVirtualMFADeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeprovisionApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
    }
}

public class DeprovisionApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeprovisionApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeprovisionApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeprovisionApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeprovisionExternalApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
    }
}

public class DeprovisionExternalApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeprovisionExternalApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeprovisionExternalApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeprovisionExternalApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableVirtualMFARequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class DisableVirtualMFAResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DisableVirtualMFAResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableVirtualMFAResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableVirtualMFAResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateCredentialReportResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
    }
}

public class GenerateCredentialReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCredentialReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateCredentialReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateGovernanceReportResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
    }
}

public class GenerateGovernanceReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateGovernanceReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateGovernanceReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessKeyInfoInRecycleBinRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
    }
}

public class GetAccessKeyInfoInRecycleBinResponseBody : Tea.TeaModel {
    public class AccessKey : Tea.TeaModel {
        public var accessKeyId: String?

        public var createDate: String?

        public var deleteDate: String?

        public var recycleDate: String?

        public var userId: String?

        public var userPrincipalName: String?

        public var userRecycled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.deleteDate != nil {
                map["DeleteDate"] = self.deleteDate!
            }
            if self.recycleDate != nil {
                map["RecycleDate"] = self.recycleDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            if self.userRecycled != nil {
                map["UserRecycled"] = self.userRecycled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DeleteDate"] as? String {
                self.deleteDate = value
            }
            if let value = dict["RecycleDate"] as? String {
                self.recycleDate = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserPrincipalName"] as? String {
                self.userPrincipalName = value
            }
            if let value = dict["UserRecycled"] as? Bool {
                self.userRecycled = value
            }
        }
    }
    public var accessKey: GetAccessKeyInfoInRecycleBinResponseBody.AccessKey?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKey"] as? [String: Any?] {
            var model = GetAccessKeyInfoInRecycleBinResponseBody.AccessKey()
            model.fromMap(value)
            self.accessKey = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccessKeyInfoInRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyInfoInRecycleBinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessKeyInfoInRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class GetAccessKeyLastUsedResponseBody : Tea.TeaModel {
    public class AccessKeyLastUsed : Tea.TeaModel {
        public var lastUsedDate: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastUsedDate != nil {
                map["LastUsedDate"] = self.lastUsedDate!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LastUsedDate"] as? String {
                self.lastUsedDate = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
        }
    }
    public var accessKeyLastUsed: GetAccessKeyLastUsedResponseBody.AccessKeyLastUsed?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKeyLastUsed?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyLastUsed != nil {
            map["AccessKeyLastUsed"] = self.accessKeyLastUsed?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKeyLastUsed"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedResponseBody.AccessKeyLastUsed()
            model.fromMap(value)
            self.accessKeyLastUsed = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccessKeyLastUsedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountMFAInfoResponseBody : Tea.TeaModel {
    public var isMFAEnable: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isMFAEnable != nil {
            map["IsMFAEnable"] = self.isMFAEnable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsMFAEnable"] as? Bool {
            self.isMFAEnable = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccountMFAInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountMFAInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccountMFAInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountSecurityPracticeReportResponseBody : Tea.TeaModel {
    public class AccountSecurityPracticeInfo : Tea.TeaModel {
        public class AccountSecurityPracticeUserInfo : Tea.TeaModel {
            public var bindMfa: Bool?

            public var oldAkNum: Int32?

            public var rootWithAccessKey: Int32?

            public var subUser: Int32?

            public var subUserBindMfa: Int32?

            public var subUserPwdLevel: String?

            public var subUserWithOldAccessKey: Int32?

            public var subUserWithUnusedAccessKey: Int32?

            public var unusedAkNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindMfa != nil {
                    map["BindMfa"] = self.bindMfa!
                }
                if self.oldAkNum != nil {
                    map["OldAkNum"] = self.oldAkNum!
                }
                if self.rootWithAccessKey != nil {
                    map["RootWithAccessKey"] = self.rootWithAccessKey!
                }
                if self.subUser != nil {
                    map["SubUser"] = self.subUser!
                }
                if self.subUserBindMfa != nil {
                    map["SubUserBindMfa"] = self.subUserBindMfa!
                }
                if self.subUserPwdLevel != nil {
                    map["SubUserPwdLevel"] = self.subUserPwdLevel!
                }
                if self.subUserWithOldAccessKey != nil {
                    map["SubUserWithOldAccessKey"] = self.subUserWithOldAccessKey!
                }
                if self.subUserWithUnusedAccessKey != nil {
                    map["SubUserWithUnusedAccessKey"] = self.subUserWithUnusedAccessKey!
                }
                if self.unusedAkNum != nil {
                    map["UnusedAkNum"] = self.unusedAkNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindMfa"] as? Bool {
                    self.bindMfa = value
                }
                if let value = dict["OldAkNum"] as? Int32 {
                    self.oldAkNum = value
                }
                if let value = dict["RootWithAccessKey"] as? Int32 {
                    self.rootWithAccessKey = value
                }
                if let value = dict["SubUser"] as? Int32 {
                    self.subUser = value
                }
                if let value = dict["SubUserBindMfa"] as? Int32 {
                    self.subUserBindMfa = value
                }
                if let value = dict["SubUserPwdLevel"] as? String {
                    self.subUserPwdLevel = value
                }
                if let value = dict["SubUserWithOldAccessKey"] as? Int32 {
                    self.subUserWithOldAccessKey = value
                }
                if let value = dict["SubUserWithUnusedAccessKey"] as? Int32 {
                    self.subUserWithUnusedAccessKey = value
                }
                if let value = dict["UnusedAkNum"] as? Int32 {
                    self.unusedAkNum = value
                }
            }
        }
        public var accountSecurityPracticeUserInfo: GetAccountSecurityPracticeReportResponseBody.AccountSecurityPracticeInfo.AccountSecurityPracticeUserInfo?

        public var score: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accountSecurityPracticeUserInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountSecurityPracticeUserInfo != nil {
                map["AccountSecurityPracticeUserInfo"] = self.accountSecurityPracticeUserInfo?.toMap()
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountSecurityPracticeUserInfo"] as? [String: Any?] {
                var model = GetAccountSecurityPracticeReportResponseBody.AccountSecurityPracticeInfo.AccountSecurityPracticeUserInfo()
                model.fromMap(value)
                self.accountSecurityPracticeUserInfo = model
            }
            if let value = dict["Score"] as? Int32 {
                self.score = value
            }
        }
    }
    public var accountSecurityPracticeInfo: GetAccountSecurityPracticeReportResponseBody.AccountSecurityPracticeInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountSecurityPracticeInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountSecurityPracticeInfo != nil {
            map["AccountSecurityPracticeInfo"] = self.accountSecurityPracticeInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountSecurityPracticeInfo"] as? [String: Any?] {
            var model = GetAccountSecurityPracticeReportResponseBody.AccountSecurityPracticeInfo()
            model.fromMap(value)
            self.accountSecurityPracticeInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccountSecurityPracticeReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountSecurityPracticeReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccountSecurityPracticeReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountSummaryResponseBody : Tea.TeaModel {
    public class SummaryMap : Tea.TeaModel {
        public var accessKeysPerUserQuota: Int32?

        public var attachedPoliciesPerGroupQuota: Int32?

        public var attachedPoliciesPerRoleQuota: Int32?

        public var attachedPoliciesPerUserQuota: Int32?

        public var attachedSystemPoliciesPerGroupQuota: Int32?

        public var attachedSystemPoliciesPerRoleQuota: Int32?

        public var attachedSystemPoliciesPerUserQuota: Int32?

        public var conditionsPerAKPolicyQuota: Int32?

        public var groups: Int32?

        public var groupsPerUserQuota: Int32?

        public var groupsQuota: Int32?

        public var IPItemsPerAKPolicyQuota: Int32?

        public var MFADevices: Int32?

        public var MFADevicesInUse: Int32?

        public var policies: Int32?

        public var policiesQuota: Int32?

        public var policySizeQuota: Int32?

        public var roles: Int32?

        public var rolesQuota: Int32?

        public var users: Int32?

        public var usersQuota: Int32?

        public var versionsPerPolicyQuota: Int32?

        public var virtualMFADevicesQuota: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeysPerUserQuota != nil {
                map["AccessKeysPerUserQuota"] = self.accessKeysPerUserQuota!
            }
            if self.attachedPoliciesPerGroupQuota != nil {
                map["AttachedPoliciesPerGroupQuota"] = self.attachedPoliciesPerGroupQuota!
            }
            if self.attachedPoliciesPerRoleQuota != nil {
                map["AttachedPoliciesPerRoleQuota"] = self.attachedPoliciesPerRoleQuota!
            }
            if self.attachedPoliciesPerUserQuota != nil {
                map["AttachedPoliciesPerUserQuota"] = self.attachedPoliciesPerUserQuota!
            }
            if self.attachedSystemPoliciesPerGroupQuota != nil {
                map["AttachedSystemPoliciesPerGroupQuota"] = self.attachedSystemPoliciesPerGroupQuota!
            }
            if self.attachedSystemPoliciesPerRoleQuota != nil {
                map["AttachedSystemPoliciesPerRoleQuota"] = self.attachedSystemPoliciesPerRoleQuota!
            }
            if self.attachedSystemPoliciesPerUserQuota != nil {
                map["AttachedSystemPoliciesPerUserQuota"] = self.attachedSystemPoliciesPerUserQuota!
            }
            if self.conditionsPerAKPolicyQuota != nil {
                map["ConditionsPerAKPolicyQuota"] = self.conditionsPerAKPolicyQuota!
            }
            if self.groups != nil {
                map["Groups"] = self.groups!
            }
            if self.groupsPerUserQuota != nil {
                map["GroupsPerUserQuota"] = self.groupsPerUserQuota!
            }
            if self.groupsQuota != nil {
                map["GroupsQuota"] = self.groupsQuota!
            }
            if self.IPItemsPerAKPolicyQuota != nil {
                map["IPItemsPerAKPolicyQuota"] = self.IPItemsPerAKPolicyQuota!
            }
            if self.MFADevices != nil {
                map["MFADevices"] = self.MFADevices!
            }
            if self.MFADevicesInUse != nil {
                map["MFADevicesInUse"] = self.MFADevicesInUse!
            }
            if self.policies != nil {
                map["Policies"] = self.policies!
            }
            if self.policiesQuota != nil {
                map["PoliciesQuota"] = self.policiesQuota!
            }
            if self.policySizeQuota != nil {
                map["PolicySizeQuota"] = self.policySizeQuota!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.rolesQuota != nil {
                map["RolesQuota"] = self.rolesQuota!
            }
            if self.users != nil {
                map["Users"] = self.users!
            }
            if self.usersQuota != nil {
                map["UsersQuota"] = self.usersQuota!
            }
            if self.versionsPerPolicyQuota != nil {
                map["VersionsPerPolicyQuota"] = self.versionsPerPolicyQuota!
            }
            if self.virtualMFADevicesQuota != nil {
                map["VirtualMFADevicesQuota"] = self.virtualMFADevicesQuota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeysPerUserQuota"] as? Int32 {
                self.accessKeysPerUserQuota = value
            }
            if let value = dict["AttachedPoliciesPerGroupQuota"] as? Int32 {
                self.attachedPoliciesPerGroupQuota = value
            }
            if let value = dict["AttachedPoliciesPerRoleQuota"] as? Int32 {
                self.attachedPoliciesPerRoleQuota = value
            }
            if let value = dict["AttachedPoliciesPerUserQuota"] as? Int32 {
                self.attachedPoliciesPerUserQuota = value
            }
            if let value = dict["AttachedSystemPoliciesPerGroupQuota"] as? Int32 {
                self.attachedSystemPoliciesPerGroupQuota = value
            }
            if let value = dict["AttachedSystemPoliciesPerRoleQuota"] as? Int32 {
                self.attachedSystemPoliciesPerRoleQuota = value
            }
            if let value = dict["AttachedSystemPoliciesPerUserQuota"] as? Int32 {
                self.attachedSystemPoliciesPerUserQuota = value
            }
            if let value = dict["ConditionsPerAKPolicyQuota"] as? Int32 {
                self.conditionsPerAKPolicyQuota = value
            }
            if let value = dict["Groups"] as? Int32 {
                self.groups = value
            }
            if let value = dict["GroupsPerUserQuota"] as? Int32 {
                self.groupsPerUserQuota = value
            }
            if let value = dict["GroupsQuota"] as? Int32 {
                self.groupsQuota = value
            }
            if let value = dict["IPItemsPerAKPolicyQuota"] as? Int32 {
                self.IPItemsPerAKPolicyQuota = value
            }
            if let value = dict["MFADevices"] as? Int32 {
                self.MFADevices = value
            }
            if let value = dict["MFADevicesInUse"] as? Int32 {
                self.MFADevicesInUse = value
            }
            if let value = dict["Policies"] as? Int32 {
                self.policies = value
            }
            if let value = dict["PoliciesQuota"] as? Int32 {
                self.policiesQuota = value
            }
            if let value = dict["PolicySizeQuota"] as? Int32 {
                self.policySizeQuota = value
            }
            if let value = dict["Roles"] as? Int32 {
                self.roles = value
            }
            if let value = dict["RolesQuota"] as? Int32 {
                self.rolesQuota = value
            }
            if let value = dict["Users"] as? Int32 {
                self.users = value
            }
            if let value = dict["UsersQuota"] as? Int32 {
                self.usersQuota = value
            }
            if let value = dict["VersionsPerPolicyQuota"] as? Int32 {
                self.versionsPerPolicyQuota = value
            }
            if let value = dict["VirtualMFADevicesQuota"] as? Int32 {
                self.virtualMFADevicesQuota = value
            }
        }
    }
    public var requestId: String?

    public var summaryMap: GetAccountSummaryResponseBody.SummaryMap?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.summaryMap?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.summaryMap != nil {
            map["SummaryMap"] = self.summaryMap?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SummaryMap"] as? [String: Any?] {
            var model = GetAccountSummaryResponseBody.SummaryMap()
            model.fromMap(value)
            self.summaryMap = model
        }
    }
}

public class GetAccountSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccountSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppSecretRequest : Tea.TeaModel {
    public var appId: String?

    public var appSecretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appSecretId != nil {
            map["AppSecretId"] = self.appSecretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppSecretId"] as? String {
            self.appSecretId = value
        }
    }
}

public class GetAppSecretResponseBody : Tea.TeaModel {
    public class AppSecret : Tea.TeaModel {
        public var appId: String?

        public var appSecretId: String?

        public var appSecretValue: String?

        public var createDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appSecretId != nil {
                map["AppSecretId"] = self.appSecretId!
            }
            if self.appSecretValue != nil {
                map["AppSecretValue"] = self.appSecretValue!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppSecretId"] as? String {
                self.appSecretId = value
            }
            if let value = dict["AppSecretValue"] as? String {
                self.appSecretValue = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
        }
    }
    public var appSecret: GetAppSecretResponseBody.AppSecret?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecret?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppSecret"] as? [String: Any?] {
            var model = GetAppSecretResponseBody.AppSecret()
            model.fromMap(value)
            self.appSecret = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAppSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAppSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
    }
}

public class GetApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Required"] as? Bool {
                            self.required_ = value
                        }
                    }
                }
                public var predefinedScope: [GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScope"] as? [Any?] {
                        var tmp : [GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in value {
                            if v != nil {
                                var model = GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PredefinedScopes"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes()
                    model.fromMap(value)
                    self.predefinedScopes = model
                }
            }
        }
        public class RedirectUris : Tea.TeaModel {
            public var redirectUri: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.redirectUri != nil {
                    map["RedirectUri"] = self.redirectUri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RedirectUri"] as? [String] {
                    self.redirectUri = value
                }
            }
        }
        public var accessTokenValidity: Int32?

        public var accountId: String?

        public var appId: String?

        public var appName: String?

        public var appType: String?

        public var createDate: String?

        public var delegatedScope: GetApplicationResponseBody.Application.DelegatedScope?

        public var displayName: String?

        public var isMultiTenant: Bool?

        public var redirectUris: GetApplicationResponseBody.Application.RedirectUris?

        public var refreshTokenValidity: Int32?

        public var secretRequired: Bool?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
            try self.redirectUris?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.isMultiTenant != nil {
                map["IsMultiTenant"] = self.isMultiTenant!
            }
            if self.redirectUris != nil {
                map["RedirectUris"] = self.redirectUris?.toMap()
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenValidity"] as? Int32 {
                self.accessTokenValidity = value
            }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DelegatedScope"] as? [String: Any?] {
                var model = GetApplicationResponseBody.Application.DelegatedScope()
                model.fromMap(value)
                self.delegatedScope = model
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["IsMultiTenant"] as? Bool {
                self.isMultiTenant = value
            }
            if let value = dict["RedirectUris"] as? [String: Any?] {
                var model = GetApplicationResponseBody.Application.RedirectUris()
                model.fromMap(value)
                self.redirectUris = model
            }
            if let value = dict["RefreshTokenValidity"] as? Int32 {
                self.refreshTokenValidity = value
            }
            if let value = dict["SecretRequired"] as? Bool {
                self.secretRequired = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var application: GetApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Application"] as? [String: Any?] {
            var model = GetApplicationResponseBody.Application()
            model.fromMap(value)
            self.application = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApplicationProvisionInfoRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
    }
}

public class GetApplicationProvisionInfoResponseBody : Tea.TeaModel {
    public class ApplicationProvisionInfo : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                    }
                }
                public var predefinedScope: [GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScope"] as? [Any?] {
                        var tmp : [GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in value {
                            if v != nil {
                                var model = GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PredefinedScopes"] as? [String: Any?] {
                    var model = GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes()
                    model.fromMap(value)
                    self.predefinedScopes = model
                }
            }
        }
        public var accountId: String?

        public var appId: String?

        public var appName: String?

        public var createDate: String?

        public var delegatedScope: GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo.DelegatedScope?

        public var displayName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DelegatedScope"] as? [String: Any?] {
                var model = GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo.DelegatedScope()
                model.fromMap(value)
                self.delegatedScope = model
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var applicationProvisionInfo: GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationProvisionInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationProvisionInfo != nil {
            map["ApplicationProvisionInfo"] = self.applicationProvisionInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationProvisionInfo"] as? [String: Any?] {
            var model = GetApplicationProvisionInfoResponseBody.ApplicationProvisionInfo()
            model.fromMap(value)
            self.applicationProvisionInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetApplicationProvisionInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationProvisionInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetApplicationProvisionInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCredentialReportRequest : Tea.TeaModel {
    public var maxItems: String?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxItems"] as? String {
            self.maxItems = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class GetCredentialReportResponseBody : Tea.TeaModel {
    public var content: String?

    public var generatedTime: String?

    public var isTruncated: String?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.generatedTime != nil {
            map["GeneratedTime"] = self.generatedTime!
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["GeneratedTime"] as? String {
            self.generatedTime = value
        }
        if let value = dict["IsTruncated"] as? String {
            self.isTruncated = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCredentialReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCredentialReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCredentialReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDefaultDomainResponseBody : Tea.TeaModel {
    public var defaultDomainName: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultDomainName != nil {
            map["DefaultDomainName"] = self.defaultDomainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultDomainName"] as? String {
            self.defaultDomainName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDefaultDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDefaultDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDefaultDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExternalApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
    }
}

public class GetExternalApplicationResponseBody : Tea.TeaModel {
    public class ExternalApplication : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                    }
                }
                public var predefinedScope: [GetExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScope"] as? [Any?] {
                        var tmp : [GetExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in value {
                            if v != nil {
                                var model = GetExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: GetExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PredefinedScopes"] as? [String: Any?] {
                    var model = GetExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes()
                    model.fromMap(value)
                    self.predefinedScopes = model
                }
            }
        }
        public var appPrincipalName: String?

        public var createDate: String?

        public var delegatedScope: GetExternalApplicationResponseBody.ExternalApplication.DelegatedScope?

        public var displayName: String?

        public var foreignAppId: String?

        public var tenantId: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appPrincipalName != nil {
                map["AppPrincipalName"] = self.appPrincipalName!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.foreignAppId != nil {
                map["ForeignAppId"] = self.foreignAppId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppPrincipalName"] as? String {
                self.appPrincipalName = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DelegatedScope"] as? [String: Any?] {
                var model = GetExternalApplicationResponseBody.ExternalApplication.DelegatedScope()
                model.fromMap(value)
                self.delegatedScope = model
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["ForeignAppId"] as? String {
                self.foreignAppId = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var externalApplication: GetExternalApplicationResponseBody.ExternalApplication?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.externalApplication?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalApplication != nil {
            map["ExternalApplication"] = self.externalApplication?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExternalApplication"] as? [String: Any?] {
            var model = GetExternalApplicationResponseBody.ExternalApplication()
            model.fromMap(value)
            self.externalApplication = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetExternalApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExternalApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetExternalApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGovernanceItemReportRequest : Tea.TeaModel {
    public var governanceItemType: String?

    public var marker: String?

    public var maxItems: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.governanceItemType != nil {
            map["GovernanceItemType"] = self.governanceItemType!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GovernanceItemType"] as? String {
            self.governanceItemType = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? String {
            self.maxItems = value
        }
    }
}

public class GetGovernanceItemReportResponseBody : Tea.TeaModel {
    public class ColumnsSchema : Tea.TeaModel {
        public class ColumnSchema : Tea.TeaModel {
            public var columnName: String?

            public var columnType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.columnType != nil {
                    map["ColumnType"] = self.columnType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ColumnName"] as? String {
                    self.columnName = value
                }
                if let value = dict["ColumnType"] as? String {
                    self.columnType = value
                }
            }
        }
        public var columnSchema: [GetGovernanceItemReportResponseBody.ColumnsSchema.ColumnSchema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columnSchema != nil {
                var tmp : [Any] = []
                for k in self.columnSchema! {
                    tmp.append(k.toMap())
                }
                map["ColumnSchema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ColumnSchema"] as? [Any?] {
                var tmp : [GetGovernanceItemReportResponseBody.ColumnsSchema.ColumnSchema] = []
                for v in value {
                    if v != nil {
                        var model = GetGovernanceItemReportResponseBody.ColumnsSchema.ColumnSchema()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.columnSchema = tmp
            }
        }
    }
    public class ColumnsValue : Tea.TeaModel {
        public class ColumnRow : Tea.TeaModel {
            public var columnValue: [Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columnValue != nil {
                    map["ColumnValue"] = self.columnValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ColumnValue"] as? [Any] {
                    self.columnValue = value
                }
            }
        }
        public var columnRow: [GetGovernanceItemReportResponseBody.ColumnsValue.ColumnRow]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columnRow != nil {
                var tmp : [Any] = []
                for k in self.columnRow! {
                    tmp.append(k.toMap())
                }
                map["ColumnRow"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ColumnRow"] as? [Any?] {
                var tmp : [GetGovernanceItemReportResponseBody.ColumnsValue.ColumnRow] = []
                for v in value {
                    if v != nil {
                        var model = GetGovernanceItemReportResponseBody.ColumnsValue.ColumnRow()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.columnRow = tmp
            }
        }
    }
    public var columnsSchema: GetGovernanceItemReportResponseBody.ColumnsSchema?

    public var columnsValue: GetGovernanceItemReportResponseBody.ColumnsValue?

    public var generateTime: String?

    public var isTruncated: Bool?

    public var marker: String?

    public var metricType: String?

    public var metricValue: Any?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columnsSchema?.validate()
        try self.columnsValue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnsSchema != nil {
            map["ColumnsSchema"] = self.columnsSchema?.toMap()
        }
        if self.columnsValue != nil {
            map["ColumnsValue"] = self.columnsValue?.toMap()
        }
        if self.generateTime != nil {
            map["GenerateTime"] = self.generateTime!
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.metricValue != nil {
            map["MetricValue"] = self.metricValue!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnsSchema"] as? [String: Any?] {
            var model = GetGovernanceItemReportResponseBody.ColumnsSchema()
            model.fromMap(value)
            self.columnsSchema = model
        }
        if let value = dict["ColumnsValue"] as? [String: Any?] {
            var model = GetGovernanceItemReportResponseBody.ColumnsValue()
            model.fromMap(value)
            self.columnsValue = model
        }
        if let value = dict["GenerateTime"] as? String {
            self.generateTime = value
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MetricType"] as? String {
            self.metricType = value
        }
        if let value = dict["MetricValue"] as? Any {
            self.metricValue = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGovernanceItemReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGovernanceItemReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGovernanceItemReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGovernanceReportStatusResponseBody : Tea.TeaModel {
    public class GovernanceItemsStatus : Tea.TeaModel {
        public class GovernanceItemStatus : Tea.TeaModel {
            public var governanceItem: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.governanceItem != nil {
                    map["GovernanceItem"] = self.governanceItem!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GovernanceItem"] as? String {
                    self.governanceItem = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var governanceItemStatus: [GetGovernanceReportStatusResponseBody.GovernanceItemsStatus.GovernanceItemStatus]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.governanceItemStatus != nil {
                var tmp : [Any] = []
                for k in self.governanceItemStatus! {
                    tmp.append(k.toMap())
                }
                map["GovernanceItemStatus"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GovernanceItemStatus"] as? [Any?] {
                var tmp : [GetGovernanceReportStatusResponseBody.GovernanceItemsStatus.GovernanceItemStatus] = []
                for v in value {
                    if v != nil {
                        var model = GetGovernanceReportStatusResponseBody.GovernanceItemsStatus.GovernanceItemStatus()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.governanceItemStatus = tmp
            }
        }
    }
    public var governanceItemsStatus: GetGovernanceReportStatusResponseBody.GovernanceItemsStatus?

    public var requestId: String?

    public var wholeReportStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.governanceItemsStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.governanceItemsStatus != nil {
            map["GovernanceItemsStatus"] = self.governanceItemsStatus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.wholeReportStatus != nil {
            map["WholeReportStatus"] = self.wholeReportStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GovernanceItemsStatus"] as? [String: Any?] {
            var model = GetGovernanceReportStatusResponseBody.GovernanceItemsStatus()
            model.fromMap(value)
            self.governanceItemsStatus = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WholeReportStatus"] as? String {
            self.wholeReportStatus = value
        }
    }
}

public class GetGovernanceReportStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGovernanceReportStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGovernanceReportStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var groupId: String?

        public var groupName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var group: GetGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Group"] as? [String: Any?] {
            var model = GetGroupResponseBody.Group()
            model.fromMap(value)
            self.group = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLoginProfileRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class GetLoginProfileResponseBody : Tea.TeaModel {
    public class LoginProfile : Tea.TeaModel {
        public var autoDisableLoginStatus: String?

        public var lastLoginTime: String?

        public var MFABindRequired: Bool?

        public var passwordResetRequired: Bool?

        public var status: String?

        public var updateDate: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoDisableLoginStatus != nil {
                map["AutoDisableLoginStatus"] = self.autoDisableLoginStatus!
            }
            if self.lastLoginTime != nil {
                map["LastLoginTime"] = self.lastLoginTime!
            }
            if self.MFABindRequired != nil {
                map["MFABindRequired"] = self.MFABindRequired!
            }
            if self.passwordResetRequired != nil {
                map["PasswordResetRequired"] = self.passwordResetRequired!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoDisableLoginStatus"] as? String {
                self.autoDisableLoginStatus = value
            }
            if let value = dict["LastLoginTime"] as? String {
                self.lastLoginTime = value
            }
            if let value = dict["MFABindRequired"] as? Bool {
                self.MFABindRequired = value
            }
            if let value = dict["PasswordResetRequired"] as? Bool {
                self.passwordResetRequired = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["UserPrincipalName"] as? String {
                self.userPrincipalName = value
            }
        }
    }
    public var loginProfile: GetLoginProfileResponseBody.LoginProfile?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginProfile != nil {
            map["LoginProfile"] = self.loginProfile?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginProfile"] as? [String: Any?] {
            var model = GetLoginProfileResponseBody.LoginProfile()
            model.fromMap(value)
            self.loginProfile = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoginProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLoginProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOIDCProviderRequest : Tea.TeaModel {
    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProviderName"] as? String {
            self.OIDCProviderName = value
        }
    }
}

public class GetOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["ClientIds"] as? String {
                self.clientIds = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Fingerprints"] as? String {
                self.fingerprints = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IssuanceLimitTime"] as? Int64 {
                self.issuanceLimitTime = value
            }
            if let value = dict["IssuerUrl"] as? String {
                self.issuerUrl = value
            }
            if let value = dict["OIDCProviderName"] as? String {
                self.OIDCProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var OIDCProvider: GetOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProvider"] as? [String: Any?] {
            var model = GetOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(value)
            self.OIDCProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOIDCProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOIDCProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPasswordPolicyResponseBody : Tea.TeaModel {
    public class PasswordPolicy : Tea.TeaModel {
        public var hardExpire: Bool?

        public var maxLoginAttemps: Int32?

        public var maxPasswordAge: Int32?

        public var minimumPasswordDifferentCharacter: Int32?

        public var minimumPasswordLength: Int32?

        public var passwordNotContainUserName: Bool?

        public var passwordReusePrevention: Int32?

        public var requireLowercaseCharacters: Bool?

        public var requireNumbers: Bool?

        public var requireSymbols: Bool?

        public var requireUppercaseCharacters: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hardExpire != nil {
                map["HardExpire"] = self.hardExpire!
            }
            if self.maxLoginAttemps != nil {
                map["MaxLoginAttemps"] = self.maxLoginAttemps!
            }
            if self.maxPasswordAge != nil {
                map["MaxPasswordAge"] = self.maxPasswordAge!
            }
            if self.minimumPasswordDifferentCharacter != nil {
                map["MinimumPasswordDifferentCharacter"] = self.minimumPasswordDifferentCharacter!
            }
            if self.minimumPasswordLength != nil {
                map["MinimumPasswordLength"] = self.minimumPasswordLength!
            }
            if self.passwordNotContainUserName != nil {
                map["PasswordNotContainUserName"] = self.passwordNotContainUserName!
            }
            if self.passwordReusePrevention != nil {
                map["PasswordReusePrevention"] = self.passwordReusePrevention!
            }
            if self.requireLowercaseCharacters != nil {
                map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
            }
            if self.requireNumbers != nil {
                map["RequireNumbers"] = self.requireNumbers!
            }
            if self.requireSymbols != nil {
                map["RequireSymbols"] = self.requireSymbols!
            }
            if self.requireUppercaseCharacters != nil {
                map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HardExpire"] as? Bool {
                self.hardExpire = value
            }
            if let value = dict["MaxLoginAttemps"] as? Int32 {
                self.maxLoginAttemps = value
            }
            if let value = dict["MaxPasswordAge"] as? Int32 {
                self.maxPasswordAge = value
            }
            if let value = dict["MinimumPasswordDifferentCharacter"] as? Int32 {
                self.minimumPasswordDifferentCharacter = value
            }
            if let value = dict["MinimumPasswordLength"] as? Int32 {
                self.minimumPasswordLength = value
            }
            if let value = dict["PasswordNotContainUserName"] as? Bool {
                self.passwordNotContainUserName = value
            }
            if let value = dict["PasswordReusePrevention"] as? Int32 {
                self.passwordReusePrevention = value
            }
            if let value = dict["RequireLowercaseCharacters"] as? Bool {
                self.requireLowercaseCharacters = value
            }
            if let value = dict["RequireNumbers"] as? Bool {
                self.requireNumbers = value
            }
            if let value = dict["RequireSymbols"] as? Bool {
                self.requireSymbols = value
            }
            if let value = dict["RequireUppercaseCharacters"] as? Bool {
                self.requireUppercaseCharacters = value
            }
        }
    }
    public var passwordPolicy: GetPasswordPolicyResponseBody.PasswordPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordPolicy != nil {
            map["PasswordPolicy"] = self.passwordPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PasswordPolicy"] as? [String: Any?] {
            var model = GetPasswordPolicyResponseBody.PasswordPolicy()
            model.fromMap(value)
            self.passwordPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPasswordPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPasswordPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPasswordPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSAMLProviderRequest : Tea.TeaModel {
    public var SAMLProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.SAMLProviderName != nil {
            map["SAMLProviderName"] = self.SAMLProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SAMLProviderName"] as? String {
            self.SAMLProviderName = value
        }
    }
}

public class GetSAMLProviderResponseBody : Tea.TeaModel {
    public class SAMLProvider : Tea.TeaModel {
        public var arn: String?

        public var createDate: String?

        public var description_: String?

        public var encodedSAMLMetadataDocument: String?

        public var SAMLProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encodedSAMLMetadataDocument != nil {
                map["EncodedSAMLMetadataDocument"] = self.encodedSAMLMetadataDocument!
            }
            if self.SAMLProviderName != nil {
                map["SAMLProviderName"] = self.SAMLProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EncodedSAMLMetadataDocument"] as? String {
                self.encodedSAMLMetadataDocument = value
            }
            if let value = dict["SAMLProviderName"] as? String {
                self.SAMLProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var requestId: String?

    public var SAMLProvider: GetSAMLProviderResponseBody.SAMLProvider?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLProvider != nil {
            map["SAMLProvider"] = self.SAMLProvider?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLProvider"] as? [String: Any?] {
            var model = GetSAMLProviderResponseBody.SAMLProvider()
            model.fromMap(value)
            self.SAMLProvider = model
        }
    }
}

public class GetSAMLProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSAMLProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSAMLProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSecurityPreferenceResponseBody : Tea.TeaModel {
    public class SecurityPreference : Tea.TeaModel {
        public class AccessKeyPreference : Tea.TeaModel {
            public var allowUserToManageAccessKeys: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageAccessKeys != nil {
                    map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManageAccessKeys"] as? Bool {
                    self.allowUserToManageAccessKeys = value
                }
            }
        }
        public class LoginProfilePreference : Tea.TeaModel {
            public var allowUserToChangePassword: Bool?

            public var allowUserToLoginWithPasskey: Bool?

            public var enableSaveMFATicket: Bool?

            public var loginNetworkMasks: String?

            public var loginSessionDuration: Int32?

            public var MFAOperationForLogin: String?

            public var operationForRiskLogin: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToChangePassword != nil {
                    map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
                }
                if self.allowUserToLoginWithPasskey != nil {
                    map["AllowUserToLoginWithPasskey"] = self.allowUserToLoginWithPasskey!
                }
                if self.enableSaveMFATicket != nil {
                    map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
                }
                if self.loginNetworkMasks != nil {
                    map["LoginNetworkMasks"] = self.loginNetworkMasks!
                }
                if self.loginSessionDuration != nil {
                    map["LoginSessionDuration"] = self.loginSessionDuration!
                }
                if self.MFAOperationForLogin != nil {
                    map["MFAOperationForLogin"] = self.MFAOperationForLogin!
                }
                if self.operationForRiskLogin != nil {
                    map["OperationForRiskLogin"] = self.operationForRiskLogin!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToChangePassword"] as? Bool {
                    self.allowUserToChangePassword = value
                }
                if let value = dict["AllowUserToLoginWithPasskey"] as? Bool {
                    self.allowUserToLoginWithPasskey = value
                }
                if let value = dict["EnableSaveMFATicket"] as? Bool {
                    self.enableSaveMFATicket = value
                }
                if let value = dict["LoginNetworkMasks"] as? String {
                    self.loginNetworkMasks = value
                }
                if let value = dict["LoginSessionDuration"] as? Int32 {
                    self.loginSessionDuration = value
                }
                if let value = dict["MFAOperationForLogin"] as? String {
                    self.MFAOperationForLogin = value
                }
                if let value = dict["OperationForRiskLogin"] as? String {
                    self.operationForRiskLogin = value
                }
            }
        }
        public class MFAPreference : Tea.TeaModel {
            public var allowUserToManageMFADevices: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageMFADevices != nil {
                    map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManageMFADevices"] as? Bool {
                    self.allowUserToManageMFADevices = value
                }
            }
        }
        public class MaxIdleDays : Tea.TeaModel {
            public var maxIdleDaysForAccessKeys: Int32?

            public var maxIdleDaysForUsers: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxIdleDaysForAccessKeys != nil {
                    map["MaxIdleDaysForAccessKeys"] = self.maxIdleDaysForAccessKeys!
                }
                if self.maxIdleDaysForUsers != nil {
                    map["MaxIdleDaysForUsers"] = self.maxIdleDaysForUsers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MaxIdleDaysForAccessKeys"] as? Int32 {
                    self.maxIdleDaysForAccessKeys = value
                }
                if let value = dict["MaxIdleDaysForUsers"] as? Int32 {
                    self.maxIdleDaysForUsers = value
                }
            }
        }
        public class PersonalInfoPreference : Tea.TeaModel {
            public var allowUserToManagePersonalDingTalk: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManagePersonalDingTalk != nil {
                    map["AllowUserToManagePersonalDingTalk"] = self.allowUserToManagePersonalDingTalk!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManagePersonalDingTalk"] as? Bool {
                    self.allowUserToManagePersonalDingTalk = value
                }
            }
        }
        public class VerificationPreference : Tea.TeaModel {
            public var verificationTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.verificationTypes != nil {
                    map["VerificationTypes"] = self.verificationTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VerificationTypes"] as? [String] {
                    self.verificationTypes = value
                }
            }
        }
        public var accessKeyPreference: GetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference?

        public var loginProfilePreference: GetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference?

        public var MFAPreference: GetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference?

        public var maxIdleDays: GetSecurityPreferenceResponseBody.SecurityPreference.MaxIdleDays?

        public var personalInfoPreference: GetSecurityPreferenceResponseBody.SecurityPreference.PersonalInfoPreference?

        public var verificationPreference: GetSecurityPreferenceResponseBody.SecurityPreference.VerificationPreference?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessKeyPreference?.validate()
            try self.loginProfilePreference?.validate()
            try self.MFAPreference?.validate()
            try self.maxIdleDays?.validate()
            try self.personalInfoPreference?.validate()
            try self.verificationPreference?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyPreference != nil {
                map["AccessKeyPreference"] = self.accessKeyPreference?.toMap()
            }
            if self.loginProfilePreference != nil {
                map["LoginProfilePreference"] = self.loginProfilePreference?.toMap()
            }
            if self.MFAPreference != nil {
                map["MFAPreference"] = self.MFAPreference?.toMap()
            }
            if self.maxIdleDays != nil {
                map["MaxIdleDays"] = self.maxIdleDays?.toMap()
            }
            if self.personalInfoPreference != nil {
                map["PersonalInfoPreference"] = self.personalInfoPreference?.toMap()
            }
            if self.verificationPreference != nil {
                map["VerificationPreference"] = self.verificationPreference?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyPreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference()
                model.fromMap(value)
                self.accessKeyPreference = model
            }
            if let value = dict["LoginProfilePreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference()
                model.fromMap(value)
                self.loginProfilePreference = model
            }
            if let value = dict["MFAPreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference()
                model.fromMap(value)
                self.MFAPreference = model
            }
            if let value = dict["MaxIdleDays"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.MaxIdleDays()
                model.fromMap(value)
                self.maxIdleDays = model
            }
            if let value = dict["PersonalInfoPreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.PersonalInfoPreference()
                model.fromMap(value)
                self.personalInfoPreference = model
            }
            if let value = dict["VerificationPreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.VerificationPreference()
                model.fromMap(value)
                self.verificationPreference = model
            }
        }
    }
    public var requestId: String?

    public var securityPreference: GetSecurityPreferenceResponseBody.SecurityPreference?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityPreference?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPreference != nil {
            map["SecurityPreference"] = self.securityPreference?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityPreference"] as? [String: Any?] {
            var model = GetSecurityPreferenceResponseBody.SecurityPreference()
            model.fromMap(value)
            self.securityPreference = model
        }
    }
}

public class GetSecurityPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecurityPreferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSecurityPreferenceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

    public var userId: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public class Tag : Tea.TeaModel {
                public var tagKey: String?

                public var tagValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagKey != nil {
                        map["TagKey"] = self.tagKey!
                    }
                    if self.tagValue != nil {
                        map["TagValue"] = self.tagValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public var tag: [GetUserResponseBody.User.Tags.Tag]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tag != nil {
                    var tmp : [Any] = []
                    for k in self.tag! {
                        tmp.append(k.toMap())
                    }
                    map["Tag"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Tag"] as? [Any?] {
                    var tmp : [GetUserResponseBody.User.Tags.Tag] = []
                    for v in value {
                        if v != nil {
                            var model = GetUserResponseBody.User.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tag = tmp
                }
            }
        }
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var lastLoginDate: String?

        public var mobilePhone: String?

        public var provisionType: String?

        public var tags: GetUserResponseBody.User.Tags?

        public var updateDate: String?

        public var userId: String?

        public var userName: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tags?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.lastLoginDate != nil {
                map["LastLoginDate"] = self.lastLoginDate!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags?.toMap()
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["LastLoginDate"] as? String {
                self.lastLoginDate = value
            }
            if let value = dict["MobilePhone"] as? String {
                self.mobilePhone = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["Tags"] as? [String: Any?] {
                var model = GetUserResponseBody.User.Tags()
                model.fromMap(value)
                self.tags = model
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["UserPrincipalName"] as? String {
                self.userPrincipalName = value
            }
        }
    }
    public var requestId: String?

    public var user: GetUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = GetUserResponseBody.User()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserInRecycleBinRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetUserInRecycleBinResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var createDate: String?

        public var deleteDate: String?

        public var displayName: String?

        public var recycleDate: String?

        public var userId: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.deleteDate != nil {
                map["DeleteDate"] = self.deleteDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.recycleDate != nil {
                map["RecycleDate"] = self.recycleDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DeleteDate"] as? String {
                self.deleteDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["RecycleDate"] as? String {
                self.recycleDate = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserPrincipalName"] as? String {
                self.userPrincipalName = value
            }
        }
    }
    public var requestId: String?

    public var user: GetUserInRecycleBinResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = GetUserInRecycleBinResponseBody.User()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class GetUserInRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserInRecycleBinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserInRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserMFAInfoRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class GetUserMFAInfoResponseBody : Tea.TeaModel {
    public class MFADevice : Tea.TeaModel {
        public var serialNumber: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var isMFAEnable: Bool?

    public var MFADevice: GetUserMFAInfoResponseBody.MFADevice?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.MFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isMFAEnable != nil {
            map["IsMFAEnable"] = self.isMFAEnable!
        }
        if self.MFADevice != nil {
            map["MFADevice"] = self.MFADevice?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsMFAEnable"] as? Bool {
            self.isMFAEnable = value
        }
        if let value = dict["MFADevice"] as? [String: Any?] {
            var model = GetUserMFAInfoResponseBody.MFADevice()
            model.fromMap(value)
            self.MFADevice = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetUserMFAInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserMFAInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserMFAInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserSsoSettingsResponseBody : Tea.TeaModel {
    public class UserSsoSettings : Tea.TeaModel {
        public var auxiliaryDomain: String?

        public var metadataDocument: String?

        public var ssoEnabled: Bool?

        public var ssoLoginWithDomain: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auxiliaryDomain != nil {
                map["AuxiliaryDomain"] = self.auxiliaryDomain!
            }
            if self.metadataDocument != nil {
                map["MetadataDocument"] = self.metadataDocument!
            }
            if self.ssoEnabled != nil {
                map["SsoEnabled"] = self.ssoEnabled!
            }
            if self.ssoLoginWithDomain != nil {
                map["SsoLoginWithDomain"] = self.ssoLoginWithDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuxiliaryDomain"] as? String {
                self.auxiliaryDomain = value
            }
            if let value = dict["MetadataDocument"] as? String {
                self.metadataDocument = value
            }
            if let value = dict["SsoEnabled"] as? Bool {
                self.ssoEnabled = value
            }
            if let value = dict["SsoLoginWithDomain"] as? Bool {
                self.ssoLoginWithDomain = value
            }
        }
    }
    public var requestId: String?

    public var userSsoSettings: GetUserSsoSettingsResponseBody.UserSsoSettings?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userSsoSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userSsoSettings != nil {
            map["UserSsoSettings"] = self.userSsoSettings?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserSsoSettings"] as? [String: Any?] {
            var model = GetUserSsoSettingsResponseBody.UserSsoSettings()
            model.fromMap(value)
            self.userSsoSettings = model
        }
    }
}

public class GetUserSsoSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserSsoSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserSsoSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVerificationInfoRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class GetVerificationInfoResponseBody : Tea.TeaModel {
    public class SecurityEmailDevice : Tea.TeaModel {
        public var email: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class SecurityPhoneDevice : Tea.TeaModel {
        public var areaCode: String?

        public var phoneNumber: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.areaCode != nil {
                map["AreaCode"] = self.areaCode!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AreaCode"] as? String {
                self.areaCode = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var securityEmailDevice: GetVerificationInfoResponseBody.SecurityEmailDevice?

    public var securityPhoneDevice: GetVerificationInfoResponseBody.SecurityPhoneDevice?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityEmailDevice?.validate()
        try self.securityPhoneDevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityEmailDevice != nil {
            map["SecurityEmailDevice"] = self.securityEmailDevice?.toMap()
        }
        if self.securityPhoneDevice != nil {
            map["SecurityPhoneDevice"] = self.securityPhoneDevice?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEmailDevice"] as? [String: Any?] {
            var model = GetVerificationInfoResponseBody.SecurityEmailDevice()
            model.fromMap(value)
            self.securityEmailDevice = model
        }
        if let value = dict["SecurityPhoneDevice"] as? [String: Any?] {
            var model = GetVerificationInfoResponseBody.SecurityPhoneDevice()
            model.fromMap(value)
            self.securityPhoneDevice = model
        }
    }
}

public class GetVerificationInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVerificationInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetVerificationInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccessKeysRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class ListAccessKeysResponseBody : Tea.TeaModel {
    public class AccessKeys : Tea.TeaModel {
        public class AccessKey : Tea.TeaModel {
            public var accessKeyId: String?

            public var createDate: String?

            public var status: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKeyId != nil {
                    map["AccessKeyId"] = self.accessKeyId!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessKeyId"] as? String {
                    self.accessKeyId = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var accessKey: [ListAccessKeysResponseBody.AccessKeys.AccessKey]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                var tmp : [Any] = []
                for k in self.accessKey! {
                    tmp.append(k.toMap())
                }
                map["AccessKey"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKey"] as? [Any?] {
                var tmp : [ListAccessKeysResponseBody.AccessKeys.AccessKey] = []
                for v in value {
                    if v != nil {
                        var model = ListAccessKeysResponseBody.AccessKeys.AccessKey()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.accessKey = tmp
            }
        }
    }
    public var accessKeys: ListAccessKeysResponseBody.AccessKeys?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKeys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeys != nil {
            map["AccessKeys"] = self.accessKeys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKeys"] as? [String: Any?] {
            var model = ListAccessKeysResponseBody.AccessKeys()
            model.fromMap(value)
            self.accessKeys = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAccessKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccessKeysInRecycleBinRequest : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ListAccessKeysInRecycleBinResponseBody : Tea.TeaModel {
    public class AccessKeys : Tea.TeaModel {
        public class AccessKey : Tea.TeaModel {
            public var accessKeyId: String?

            public var createDate: String?

            public var deleteDate: String?

            public var recycleDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKeyId != nil {
                    map["AccessKeyId"] = self.accessKeyId!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.deleteDate != nil {
                    map["DeleteDate"] = self.deleteDate!
                }
                if self.recycleDate != nil {
                    map["RecycleDate"] = self.recycleDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessKeyId"] as? String {
                    self.accessKeyId = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DeleteDate"] as? String {
                    self.deleteDate = value
                }
                if let value = dict["RecycleDate"] as? String {
                    self.recycleDate = value
                }
            }
        }
        public var accessKey: [ListAccessKeysInRecycleBinResponseBody.AccessKeys.AccessKey]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                var tmp : [Any] = []
                for k in self.accessKey! {
                    tmp.append(k.toMap())
                }
                map["AccessKey"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKey"] as? [Any?] {
                var tmp : [ListAccessKeysInRecycleBinResponseBody.AccessKeys.AccessKey] = []
                for v in value {
                    if v != nil {
                        var model = ListAccessKeysInRecycleBinResponseBody.AccessKeys.AccessKey()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.accessKey = tmp
            }
        }
    }
    public var accessKeys: ListAccessKeysInRecycleBinResponseBody.AccessKeys?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKeys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeys != nil {
            map["AccessKeys"] = self.accessKeys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKeys"] as? [String: Any?] {
            var model = ListAccessKeysInRecycleBinResponseBody.AccessKeys()
            model.fromMap(value)
            self.accessKeys = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAccessKeysInRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessKeysInRecycleBinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessKeysInRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppSecretIdsRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
    }
}

public class ListAppSecretIdsResponseBody : Tea.TeaModel {
    public class AppSecrets : Tea.TeaModel {
        public class AppSecret : Tea.TeaModel {
            public var appId: String?

            public var appSecretId: String?

            public var createDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appSecretId != nil {
                    map["AppSecretId"] = self.appSecretId!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["AppSecretId"] as? String {
                    self.appSecretId = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
            }
        }
        public var appSecret: [ListAppSecretIdsResponseBody.AppSecrets.AppSecret]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appSecret != nil {
                var tmp : [Any] = []
                for k in self.appSecret! {
                    tmp.append(k.toMap())
                }
                map["AppSecret"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppSecret"] as? [Any?] {
                var tmp : [ListAppSecretIdsResponseBody.AppSecrets.AppSecret] = []
                for v in value {
                    if v != nil {
                        var model = ListAppSecretIdsResponseBody.AppSecrets.AppSecret()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appSecret = tmp
            }
        }
    }
    public var appSecrets: ListAppSecretIdsResponseBody.AppSecrets?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecrets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecrets != nil {
            map["AppSecrets"] = self.appSecrets?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppSecrets"] as? [String: Any?] {
            var model = ListAppSecretIdsResponseBody.AppSecrets()
            model.fromMap(value)
            self.appSecrets = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAppSecretIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppSecretIdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAppSecretIdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApplicationProvisionInfosRequest : Tea.TeaModel {
    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class ListApplicationProvisionInfosResponseBody : Tea.TeaModel {
    public class ApplicationProvisionInfos : Tea.TeaModel {
        public class ApplicationProvisionInfo : Tea.TeaModel {
            public class DelegatedScope : Tea.TeaModel {
                public class PredefinedScopes : Tea.TeaModel {
                    public class PredefinedScope : Tea.TeaModel {
                        public var description_: String?

                        public var name: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.description_ != nil {
                                map["Description"] = self.description_!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Description"] as? String {
                                self.description_ = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                        }
                    }
                    public var predefinedScope: [ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.predefinedScope != nil {
                            var tmp : [Any] = []
                            for k in self.predefinedScope! {
                                tmp.append(k.toMap())
                            }
                            map["PredefinedScope"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PredefinedScope"] as? [Any?] {
                            var tmp : [ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                            for v in value {
                                if v != nil {
                                    var model = ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.predefinedScope = tmp
                        }
                    }
                }
                public var predefinedScopes: ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.predefinedScopes?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScopes != nil {
                        map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScopes"] as? [String: Any?] {
                        var model = ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes()
                        model.fromMap(value)
                        self.predefinedScopes = model
                    }
                }
            }
            public var accountId: String?

            public var appId: String?

            public var appName: String?

            public var createDate: String?

            public var delegatedScope: ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo.DelegatedScope?

            public var displayName: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.delegatedScope?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.delegatedScope != nil {
                    map["DelegatedScope"] = self.delegatedScope?.toMap()
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DelegatedScope"] as? [String: Any?] {
                    var model = ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo.DelegatedScope()
                    model.fromMap(value)
                    self.delegatedScope = model
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var applicationProvisionInfo: [ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationProvisionInfo != nil {
                var tmp : [Any] = []
                for k in self.applicationProvisionInfo! {
                    tmp.append(k.toMap())
                }
                map["ApplicationProvisionInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationProvisionInfo"] as? [Any?] {
                var tmp : [ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos.ApplicationProvisionInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applicationProvisionInfo = tmp
            }
        }
    }
    public var applicationProvisionInfos: ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationProvisionInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationProvisionInfos != nil {
            map["ApplicationProvisionInfos"] = self.applicationProvisionInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationProvisionInfos"] as? [String: Any?] {
            var model = ListApplicationProvisionInfosResponseBody.ApplicationProvisionInfos()
            model.fromMap(value)
            self.applicationProvisionInfos = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListApplicationProvisionInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationProvisionInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListApplicationProvisionInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class Application : Tea.TeaModel {
            public class DelegatedScope : Tea.TeaModel {
                public class PredefinedScopes : Tea.TeaModel {
                    public class PredefinedScope : Tea.TeaModel {
                        public var description_: String?

                        public var name: String?

                        public var required_: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.description_ != nil {
                                map["Description"] = self.description_!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.required_ != nil {
                                map["Required"] = self.required_!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Description"] as? String {
                                self.description_ = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Required"] as? Bool {
                                self.required_ = value
                            }
                        }
                    }
                    public var predefinedScope: [ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes.PredefinedScope]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.predefinedScope != nil {
                            var tmp : [Any] = []
                            for k in self.predefinedScope! {
                                tmp.append(k.toMap())
                            }
                            map["PredefinedScope"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PredefinedScope"] as? [Any?] {
                            var tmp : [ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                            for v in value {
                                if v != nil {
                                    var model = ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes.PredefinedScope()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.predefinedScope = tmp
                        }
                    }
                }
                public var predefinedScopes: ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.predefinedScopes?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScopes != nil {
                        map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScopes"] as? [String: Any?] {
                        var model = ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes()
                        model.fromMap(value)
                        self.predefinedScopes = model
                    }
                }
            }
            public class RedirectUris : Tea.TeaModel {
                public var redirectUri: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.redirectUri != nil {
                        map["RedirectUri"] = self.redirectUri!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RedirectUri"] as? [String] {
                        self.redirectUri = value
                    }
                }
            }
            public var accessTokenValidity: Int32?

            public var accountId: String?

            public var appId: String?

            public var appName: String?

            public var appType: String?

            public var createDate: String?

            public var delegatedScope: ListApplicationsResponseBody.Applications.Application.DelegatedScope?

            public var displayName: String?

            public var isMultiTenant: Bool?

            public var redirectUris: ListApplicationsResponseBody.Applications.Application.RedirectUris?

            public var refreshTokenValidity: Int32?

            public var secretRequired: Bool?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.delegatedScope?.validate()
                try self.redirectUris?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessTokenValidity != nil {
                    map["AccessTokenValidity"] = self.accessTokenValidity!
                }
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appType != nil {
                    map["AppType"] = self.appType!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.delegatedScope != nil {
                    map["DelegatedScope"] = self.delegatedScope?.toMap()
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.isMultiTenant != nil {
                    map["IsMultiTenant"] = self.isMultiTenant!
                }
                if self.redirectUris != nil {
                    map["RedirectUris"] = self.redirectUris?.toMap()
                }
                if self.refreshTokenValidity != nil {
                    map["RefreshTokenValidity"] = self.refreshTokenValidity!
                }
                if self.secretRequired != nil {
                    map["SecretRequired"] = self.secretRequired!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessTokenValidity"] as? Int32 {
                    self.accessTokenValidity = value
                }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["AppType"] as? String {
                    self.appType = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DelegatedScope"] as? [String: Any?] {
                    var model = ListApplicationsResponseBody.Applications.Application.DelegatedScope()
                    model.fromMap(value)
                    self.delegatedScope = model
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["IsMultiTenant"] as? Bool {
                    self.isMultiTenant = value
                }
                if let value = dict["RedirectUris"] as? [String: Any?] {
                    var model = ListApplicationsResponseBody.Applications.Application.RedirectUris()
                    model.fromMap(value)
                    self.redirectUris = model
                }
                if let value = dict["RefreshTokenValidity"] as? Int32 {
                    self.refreshTokenValidity = value
                }
                if let value = dict["SecretRequired"] as? Bool {
                    self.secretRequired = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var application: [ListApplicationsResponseBody.Applications.Application]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.application != nil {
                var tmp : [Any] = []
                for k in self.application! {
                    tmp.append(k.toMap())
                }
                map["Application"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Application"] as? [Any?] {
                var tmp : [ListApplicationsResponseBody.Applications.Application] = []
                for v in value {
                    if v != nil {
                        var model = ListApplicationsResponseBody.Applications.Application()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.application = tmp
            }
        }
    }
    public var applications: ListApplicationsResponseBody.Applications?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applications?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applications != nil {
            map["Applications"] = self.applications?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Applications"] as? [String: Any?] {
            var model = ListApplicationsResponseBody.Applications()
            model.fromMap(value)
            self.applications = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListApplicationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExternalApplicationsResponseBody : Tea.TeaModel {
    public class ExternalApplications : Tea.TeaModel {
        public class ExternalApplication : Tea.TeaModel {
            public class DelegatedScope : Tea.TeaModel {
                public class PredefinedScopes : Tea.TeaModel {
                    public class PredefinedScope : Tea.TeaModel {
                        public var description_: String?

                        public var name: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.description_ != nil {
                                map["Description"] = self.description_!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Description"] as? String {
                                self.description_ = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                        }
                    }
                    public var predefinedScope: [ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.predefinedScope != nil {
                            var tmp : [Any] = []
                            for k in self.predefinedScope! {
                                tmp.append(k.toMap())
                            }
                            map["PredefinedScope"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PredefinedScope"] as? [Any?] {
                            var tmp : [ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                            for v in value {
                                if v != nil {
                                    var model = ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.predefinedScope = tmp
                        }
                    }
                }
                public var predefinedScopes: ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication.DelegatedScope.PredefinedScopes?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.predefinedScopes?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScopes != nil {
                        map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScopes"] as? [String: Any?] {
                        var model = ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication.DelegatedScope.PredefinedScopes()
                        model.fromMap(value)
                        self.predefinedScopes = model
                    }
                }
            }
            public var appPrincipalName: String?

            public var createDate: String?

            public var delegatedScope: ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication.DelegatedScope?

            public var displayName: String?

            public var foreignAppId: String?

            public var tenantId: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.delegatedScope?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appPrincipalName != nil {
                    map["AppPrincipalName"] = self.appPrincipalName!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.delegatedScope != nil {
                    map["DelegatedScope"] = self.delegatedScope?.toMap()
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.foreignAppId != nil {
                    map["ForeignAppId"] = self.foreignAppId!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppPrincipalName"] as? String {
                    self.appPrincipalName = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DelegatedScope"] as? [String: Any?] {
                    var model = ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication.DelegatedScope()
                    model.fromMap(value)
                    self.delegatedScope = model
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["ForeignAppId"] as? String {
                    self.foreignAppId = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var externalApplication: [ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.externalApplication != nil {
                var tmp : [Any] = []
                for k in self.externalApplication! {
                    tmp.append(k.toMap())
                }
                map["ExternalApplication"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExternalApplication"] as? [Any?] {
                var tmp : [ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication] = []
                for v in value {
                    if v != nil {
                        var model = ListExternalApplicationsResponseBody.ExternalApplications.ExternalApplication()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.externalApplication = tmp
            }
        }
    }
    public var externalApplications: ListExternalApplicationsResponseBody.ExternalApplications?

    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.externalApplications?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalApplications != nil {
            map["ExternalApplications"] = self.externalApplications?.toMap()
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExternalApplications"] as? [String: Any?] {
            var model = ListExternalApplicationsResponseBody.ExternalApplications()
            model.fromMap(value)
            self.externalApplications = model
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListExternalApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExternalApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExternalApplicationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public var comments: String?

            public var createDate: String?

            public var displayName: String?

            public var groupId: String?

            public var groupName: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comments"] as? String {
                    self.comments = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var group: [ListGroupsResponseBody.Groups.Group]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                var tmp : [Any] = []
                for k in self.group! {
                    tmp.append(k.toMap())
                }
                map["Group"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Group"] as? [Any?] {
                var tmp : [ListGroupsResponseBody.Groups.Group] = []
                for v in value {
                    if v != nil {
                        var model = ListGroupsResponseBody.Groups.Group()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.group = tmp
            }
        }
    }
    public var groups: ListGroupsResponseBody.Groups?

    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            map["Groups"] = self.groups?.toMap()
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Groups"] as? [String: Any?] {
            var model = ListGroupsResponseBody.Groups()
            model.fromMap(value)
            self.groups = model
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGroupsForUserRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class ListGroupsForUserResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public var comments: String?

            public var displayName: String?

            public var groupId: String?

            public var groupName: String?

            public var joinDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.joinDate != nil {
                    map["JoinDate"] = self.joinDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comments"] as? String {
                    self.comments = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["JoinDate"] as? String {
                    self.joinDate = value
                }
            }
        }
        public var group: [ListGroupsForUserResponseBody.Groups.Group]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                var tmp : [Any] = []
                for k in self.group! {
                    tmp.append(k.toMap())
                }
                map["Group"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Group"] as? [Any?] {
                var tmp : [ListGroupsForUserResponseBody.Groups.Group] = []
                for v in value {
                    if v != nil {
                        var model = ListGroupsForUserResponseBody.Groups.Group()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.group = tmp
            }
        }
    }
    public var groups: ListGroupsForUserResponseBody.Groups?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            map["Groups"] = self.groups?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Groups"] as? [String: Any?] {
            var model = ListGroupsForUserResponseBody.Groups()
            model.fromMap(value)
            self.groups = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGroupsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGroupsForUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOIDCProvidersRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
    }
}

public class ListOIDCProvidersResponseBody : Tea.TeaModel {
    public class OIDCProviders : Tea.TeaModel {
        public class OIDCProvider : Tea.TeaModel {
            public var arn: String?

            public var clientIds: String?

            public var createDate: String?

            public var description_: String?

            public var fingerprints: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var issuanceLimitTime: Int64?

            public var issuerUrl: String?

            public var OIDCProviderName: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arn != nil {
                    map["Arn"] = self.arn!
                }
                if self.clientIds != nil {
                    map["ClientIds"] = self.clientIds!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.fingerprints != nil {
                    map["Fingerprints"] = self.fingerprints!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.issuanceLimitTime != nil {
                    map["IssuanceLimitTime"] = self.issuanceLimitTime!
                }
                if self.issuerUrl != nil {
                    map["IssuerUrl"] = self.issuerUrl!
                }
                if self.OIDCProviderName != nil {
                    map["OIDCProviderName"] = self.OIDCProviderName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Arn"] as? String {
                    self.arn = value
                }
                if let value = dict["ClientIds"] as? String {
                    self.clientIds = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Fingerprints"] as? String {
                    self.fingerprints = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["IssuanceLimitTime"] as? Int64 {
                    self.issuanceLimitTime = value
                }
                if let value = dict["IssuerUrl"] as? String {
                    self.issuerUrl = value
                }
                if let value = dict["OIDCProviderName"] as? String {
                    self.OIDCProviderName = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var OIDCProvider: [ListOIDCProvidersResponseBody.OIDCProviders.OIDCProvider]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.OIDCProvider != nil {
                var tmp : [Any] = []
                for k in self.OIDCProvider! {
                    tmp.append(k.toMap())
                }
                map["OIDCProvider"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OIDCProvider"] as? [Any?] {
                var tmp : [ListOIDCProvidersResponseBody.OIDCProviders.OIDCProvider] = []
                for v in value {
                    if v != nil {
                        var model = ListOIDCProvidersResponseBody.OIDCProviders.OIDCProvider()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.OIDCProvider = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var OIDCProviders: ListOIDCProvidersResponseBody.OIDCProviders?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProviders?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.OIDCProviders != nil {
            map["OIDCProviders"] = self.OIDCProviders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["OIDCProviders"] as? [String: Any?] {
            var model = ListOIDCProvidersResponseBody.OIDCProviders()
            model.fromMap(value)
            self.OIDCProviders = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListOIDCProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOIDCProvidersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOIDCProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPasskeysRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class ListPasskeysResponseBody : Tea.TeaModel {
    public class Passkeys : Tea.TeaModel {
        public var createDate: String?

        public var lastUseDate: String?

        public var passkeyId: String?

        public var passkeyName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.lastUseDate != nil {
                map["LastUseDate"] = self.lastUseDate!
            }
            if self.passkeyId != nil {
                map["PasskeyId"] = self.passkeyId!
            }
            if self.passkeyName != nil {
                map["PasskeyName"] = self.passkeyName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["LastUseDate"] as? String {
                self.lastUseDate = value
            }
            if let value = dict["PasskeyId"] as? String {
                self.passkeyId = value
            }
            if let value = dict["PasskeyName"] as? String {
                self.passkeyName = value
            }
        }
    }
    public var passkeys: [ListPasskeysResponseBody.Passkeys]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passkeys != nil {
            var tmp : [Any] = []
            for k in self.passkeys! {
                tmp.append(k.toMap())
            }
            map["Passkeys"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Passkeys"] as? [Any?] {
            var tmp : [ListPasskeysResponseBody.Passkeys] = []
            for v in value {
                if v != nil {
                    var model = ListPasskeysResponseBody.Passkeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.passkeys = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPasskeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPasskeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPasskeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPredefinedScopesRequest : Tea.TeaModel {
    public var appType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
    }
}

public class ListPredefinedScopesResponseBody : Tea.TeaModel {
    public class PredefinedScopes : Tea.TeaModel {
        public class PredefinedScope : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var predefinedScope: [ListPredefinedScopesResponseBody.PredefinedScopes.PredefinedScope]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.predefinedScope != nil {
                var tmp : [Any] = []
                for k in self.predefinedScope! {
                    tmp.append(k.toMap())
                }
                map["PredefinedScope"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PredefinedScope"] as? [Any?] {
                var tmp : [ListPredefinedScopesResponseBody.PredefinedScopes.PredefinedScope] = []
                for v in value {
                    if v != nil {
                        var model = ListPredefinedScopesResponseBody.PredefinedScopes.PredefinedScope()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.predefinedScope = tmp
            }
        }
    }
    public var predefinedScopes: ListPredefinedScopesResponseBody.PredefinedScopes?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.predefinedScopes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.predefinedScopes != nil {
            map["PredefinedScopes"] = self.predefinedScopes?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PredefinedScopes"] as? [String: Any?] {
            var model = ListPredefinedScopesResponseBody.PredefinedScopes()
            model.fromMap(value)
            self.predefinedScopes = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPredefinedScopesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPredefinedScopesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPredefinedScopesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRecentGovernanceMetricsResponseBody : Tea.TeaModel {
    public class GovernanceMetrics : Tea.TeaModel {
        public class GovernanceMetric : Tea.TeaModel {
            public var governanceItem: String?

            public var metricType: String?

            public var metricValue: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.governanceItem != nil {
                    map["GovernanceItem"] = self.governanceItem!
                }
                if self.metricType != nil {
                    map["MetricType"] = self.metricType!
                }
                if self.metricValue != nil {
                    map["MetricValue"] = self.metricValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GovernanceItem"] as? String {
                    self.governanceItem = value
                }
                if let value = dict["MetricType"] as? String {
                    self.metricType = value
                }
                if let value = dict["MetricValue"] as? Any {
                    self.metricValue = value
                }
            }
        }
        public var governanceMetric: [ListRecentGovernanceMetricsResponseBody.GovernanceMetrics.GovernanceMetric]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.governanceMetric != nil {
                var tmp : [Any] = []
                for k in self.governanceMetric! {
                    tmp.append(k.toMap())
                }
                map["GovernanceMetric"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GovernanceMetric"] as? [Any?] {
                var tmp : [ListRecentGovernanceMetricsResponseBody.GovernanceMetrics.GovernanceMetric] = []
                for v in value {
                    if v != nil {
                        var model = ListRecentGovernanceMetricsResponseBody.GovernanceMetrics.GovernanceMetric()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.governanceMetric = tmp
            }
        }
    }
    public var generateTime: String?

    public var governanceMetrics: ListRecentGovernanceMetricsResponseBody.GovernanceMetrics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.governanceMetrics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.generateTime != nil {
            map["GenerateTime"] = self.generateTime!
        }
        if self.governanceMetrics != nil {
            map["GovernanceMetrics"] = self.governanceMetrics?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GenerateTime"] as? String {
            self.generateTime = value
        }
        if let value = dict["GovernanceMetrics"] as? [String: Any?] {
            var model = ListRecentGovernanceMetricsResponseBody.GovernanceMetrics()
            model.fromMap(value)
            self.governanceMetrics = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRecentGovernanceMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRecentGovernanceMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRecentGovernanceMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSAMLProvidersRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
    }
}

public class ListSAMLProvidersResponseBody : Tea.TeaModel {
    public class SAMLProviders : Tea.TeaModel {
        public class SAMLProvider : Tea.TeaModel {
            public var arn: String?

            public var createDate: String?

            public var description_: String?

            public var SAMLProviderName: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arn != nil {
                    map["Arn"] = self.arn!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.SAMLProviderName != nil {
                    map["SAMLProviderName"] = self.SAMLProviderName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Arn"] as? String {
                    self.arn = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["SAMLProviderName"] as? String {
                    self.SAMLProviderName = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var SAMLProvider: [ListSAMLProvidersResponseBody.SAMLProviders.SAMLProvider]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.SAMLProvider != nil {
                var tmp : [Any] = []
                for k in self.SAMLProvider! {
                    tmp.append(k.toMap())
                }
                map["SAMLProvider"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SAMLProvider"] as? [Any?] {
                var tmp : [ListSAMLProvidersResponseBody.SAMLProviders.SAMLProvider] = []
                for v in value {
                    if v != nil {
                        var model = ListSAMLProvidersResponseBody.SAMLProviders.SAMLProvider()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.SAMLProvider = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var SAMLProviders: ListSAMLProvidersResponseBody.SAMLProviders?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLProviders?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLProviders != nil {
            map["SAMLProviders"] = self.SAMLProviders?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLProviders"] as? [String: Any?] {
            var model = ListSAMLProvidersResponseBody.SAMLProviders()
            model.fromMap(value)
            self.SAMLProviders = model
        }
    }
}

public class ListSAMLProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSAMLProvidersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSAMLProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var nextToken: String?

    public var pageSize: Int32?

    public var resourceId: [String]?

    public var resourcePrincipalName: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourcePrincipalName != nil {
            map["ResourcePrincipalName"] = self.resourcePrincipalName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourcePrincipalName"] as? [String] {
            self.resourcePrincipalName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserBasicInfosRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var marker: String?

    public var maxItems: Int32?

    public var status: String?

    public var tag: [ListUserBasicInfosRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListUserBasicInfosRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListUserBasicInfosRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListUserBasicInfosResponseBody : Tea.TeaModel {
    public class UserBasicInfos : Tea.TeaModel {
        public class UserBasicInfo : Tea.TeaModel {
            public var displayName: String?

            public var status: String?

            public var userId: String?

            public var userPrincipalName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserPrincipalName"] as? String {
                    self.userPrincipalName = value
                }
            }
        }
        public var userBasicInfo: [ListUserBasicInfosResponseBody.UserBasicInfos.UserBasicInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userBasicInfo != nil {
                var tmp : [Any] = []
                for k in self.userBasicInfo! {
                    tmp.append(k.toMap())
                }
                map["UserBasicInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserBasicInfo"] as? [Any?] {
                var tmp : [ListUserBasicInfosResponseBody.UserBasicInfos.UserBasicInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListUserBasicInfosResponseBody.UserBasicInfos.UserBasicInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.userBasicInfo = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var userBasicInfos: ListUserBasicInfosResponseBody.UserBasicInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userBasicInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userBasicInfos != nil {
            map["UserBasicInfos"] = self.userBasicInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserBasicInfos"] as? [String: Any?] {
            var model = ListUserBasicInfosResponseBody.UserBasicInfos()
            model.fromMap(value)
            self.userBasicInfos = model
        }
    }
}

public class ListUserBasicInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserBasicInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserBasicInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var marker: String?

    public var maxItems: Int32?

    public var status: String?

    public var tag: [ListUsersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListUsersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListUsersRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var tagKey: String?

                    public var tagValue: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.tagKey != nil {
                            map["TagKey"] = self.tagKey!
                        }
                        if self.tagValue != nil {
                            map["TagValue"] = self.tagValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["TagKey"] as? String {
                            self.tagKey = value
                        }
                        if let value = dict["TagValue"] as? String {
                            self.tagValue = value
                        }
                    }
                }
                public var tag: [ListUsersResponseBody.Users.User.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [ListUsersResponseBody.Users.User.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListUsersResponseBody.Users.User.Tags.Tag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tag = tmp
                    }
                }
            }
            public var comments: String?

            public var createDate: String?

            public var displayName: String?

            public var email: String?

            public var lastLoginDate: String?

            public var mobilePhone: String?

            public var provisionType: String?

            public var status: String?

            public var tags: ListUsersResponseBody.Users.User.Tags?

            public var updateDate: String?

            public var userId: String?

            public var userPrincipalName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.lastLoginDate != nil {
                    map["LastLoginDate"] = self.lastLoginDate!
                }
                if self.mobilePhone != nil {
                    map["MobilePhone"] = self.mobilePhone!
                }
                if self.provisionType != nil {
                    map["ProvisionType"] = self.provisionType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comments"] as? String {
                    self.comments = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["LastLoginDate"] as? String {
                    self.lastLoginDate = value
                }
                if let value = dict["MobilePhone"] as? String {
                    self.mobilePhone = value
                }
                if let value = dict["ProvisionType"] as? String {
                    self.provisionType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListUsersResponseBody.Users.User.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserPrincipalName"] as? String {
                    self.userPrincipalName = value
                }
            }
        }
        public var user: [ListUsersResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["User"] as? [Any?] {
                var tmp : [ListUsersResponseBody.Users.User] = []
                for v in value {
                    if v != nil {
                        var model = ListUsersResponseBody.Users.User()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.user = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var users: ListUsersResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [String: Any?] {
            var model = ListUsersResponseBody.Users()
            model.fromMap(value)
            self.users = model
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersForGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
    }
}

public class ListUsersForGroupResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var displayName: String?

            public var joinDate: String?

            public var userId: String?

            public var userPrincipalName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.joinDate != nil {
                    map["JoinDate"] = self.joinDate!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["JoinDate"] as? String {
                    self.joinDate = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserPrincipalName"] as? String {
                    self.userPrincipalName = value
                }
            }
        }
        public var user: [ListUsersForGroupResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["User"] as? [Any?] {
                var tmp : [ListUsersForGroupResponseBody.Users.User] = []
                for v in value {
                    if v != nil {
                        var model = ListUsersForGroupResponseBody.Users.User()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.user = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var users: ListUsersForGroupResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [String: Any?] {
            var model = ListUsersForGroupResponseBody.Users()
            model.fromMap(value)
            self.users = model
        }
    }
}

public class ListUsersForGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersForGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUsersForGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersInRecycleBinRequest : Tea.TeaModel {
    public var filter: String?

    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
    }
}

public class ListUsersInRecycleBinResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var createDate: String?

            public var deleteDate: String?

            public var displayName: String?

            public var recycleDate: String?

            public var userId: String?

            public var userPrincipalName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.deleteDate != nil {
                    map["DeleteDate"] = self.deleteDate!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.recycleDate != nil {
                    map["RecycleDate"] = self.recycleDate!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DeleteDate"] as? String {
                    self.deleteDate = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["RecycleDate"] as? String {
                    self.recycleDate = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserPrincipalName"] as? String {
                    self.userPrincipalName = value
                }
            }
        }
        public var user: [ListUsersInRecycleBinResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["User"] as? [Any?] {
                var tmp : [ListUsersInRecycleBinResponseBody.Users.User] = []
                for v in value {
                    if v != nil {
                        var model = ListUsersInRecycleBinResponseBody.Users.User()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.user = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var users: ListUsersInRecycleBinResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [String: Any?] {
            var model = ListUsersInRecycleBinResponseBody.Users()
            model.fromMap(value)
            self.users = model
        }
    }
}

public class ListUsersInRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersInRecycleBinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUsersInRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVirtualMFADevicesRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
    }
}

public class ListVirtualMFADevicesResponseBody : Tea.TeaModel {
    public class VirtualMFADevices : Tea.TeaModel {
        public class VirtualMFADevice : Tea.TeaModel {
            public class User : Tea.TeaModel {
                public var displayName: String?

                public var userId: String?

                public var userPrincipalName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    if self.userPrincipalName != nil {
                        map["UserPrincipalName"] = self.userPrincipalName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DisplayName"] as? String {
                        self.displayName = value
                    }
                    if let value = dict["UserId"] as? String {
                        self.userId = value
                    }
                    if let value = dict["UserPrincipalName"] as? String {
                        self.userPrincipalName = value
                    }
                }
            }
            public var activateDate: String?

            public var serialNumber: String?

            public var user: ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice.User?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.user?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activateDate != nil {
                    map["ActivateDate"] = self.activateDate!
                }
                if self.serialNumber != nil {
                    map["SerialNumber"] = self.serialNumber!
                }
                if self.user != nil {
                    map["User"] = self.user?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActivateDate"] as? String {
                    self.activateDate = value
                }
                if let value = dict["SerialNumber"] as? String {
                    self.serialNumber = value
                }
                if let value = dict["User"] as? [String: Any?] {
                    var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice.User()
                    model.fromMap(value)
                    self.user = model
                }
            }
        }
        public var virtualMFADevice: [ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.virtualMFADevice != nil {
                var tmp : [Any] = []
                for k in self.virtualMFADevice! {
                    tmp.append(k.toMap())
                }
                map["VirtualMFADevice"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VirtualMFADevice"] as? [Any?] {
                var tmp : [ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice] = []
                for v in value {
                    if v != nil {
                        var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.virtualMFADevice = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var virtualMFADevices: ListVirtualMFADevicesResponseBody.VirtualMFADevices?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.virtualMFADevices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.virtualMFADevices != nil {
            map["VirtualMFADevices"] = self.virtualMFADevices?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VirtualMFADevices"] as? [String: Any?] {
            var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices()
            model.fromMap(value)
            self.virtualMFADevices = model
        }
    }
}

public class ListVirtualMFADevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVirtualMFADevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListVirtualMFADevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ProvisionApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public var scopes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.scopes != nil {
            map["Scopes"] = self.scopes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Scopes"] as? String {
            self.scopes = value
        }
    }
}

public class ProvisionApplicationResponseBody : Tea.TeaModel {
    public class ApplicationProvisionInfo : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                    }
                }
                public var predefinedScope: [ProvisionApplicationResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScope"] as? [Any?] {
                        var tmp : [ProvisionApplicationResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in value {
                            if v != nil {
                                var model = ProvisionApplicationResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes.PredefinedScope()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: ProvisionApplicationResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PredefinedScopes"] as? [String: Any?] {
                    var model = ProvisionApplicationResponseBody.ApplicationProvisionInfo.DelegatedScope.PredefinedScopes()
                    model.fromMap(value)
                    self.predefinedScopes = model
                }
            }
        }
        public var accountId: String?

        public var appId: String?

        public var appName: String?

        public var appPrincipalName: String?

        public var createDate: String?

        public var delegatedScope: ProvisionApplicationResponseBody.ApplicationProvisionInfo.DelegatedScope?

        public var displayName: String?

        public var tenantId: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appPrincipalName != nil {
                map["AppPrincipalName"] = self.appPrincipalName!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppPrincipalName"] as? String {
                self.appPrincipalName = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DelegatedScope"] as? [String: Any?] {
                var model = ProvisionApplicationResponseBody.ApplicationProvisionInfo.DelegatedScope()
                model.fromMap(value)
                self.delegatedScope = model
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var applicationProvisionInfo: ProvisionApplicationResponseBody.ApplicationProvisionInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationProvisionInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationProvisionInfo != nil {
            map["ApplicationProvisionInfo"] = self.applicationProvisionInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationProvisionInfo"] as? [String: Any?] {
            var model = ProvisionApplicationResponseBody.ApplicationProvisionInfo()
            model.fromMap(value)
            self.applicationProvisionInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ProvisionApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProvisionApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProvisionApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ProvisionExternalApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public var scopes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.scopes != nil {
            map["Scopes"] = self.scopes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Scopes"] as? String {
            self.scopes = value
        }
    }
}

public class ProvisionExternalApplicationResponseBody : Tea.TeaModel {
    public class ExternalApplication : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                    }
                }
                public var predefinedScope: [ProvisionExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScope"] as? [Any?] {
                        var tmp : [ProvisionExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in value {
                            if v != nil {
                                var model = ProvisionExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes.PredefinedScope()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: ProvisionExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PredefinedScopes"] as? [String: Any?] {
                    var model = ProvisionExternalApplicationResponseBody.ExternalApplication.DelegatedScope.PredefinedScopes()
                    model.fromMap(value)
                    self.predefinedScopes = model
                }
            }
        }
        public var appPrincipalName: String?

        public var createDate: String?

        public var delegatedScope: ProvisionExternalApplicationResponseBody.ExternalApplication.DelegatedScope?

        public var displayName: String?

        public var foreignAppId: String?

        public var tenantId: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appPrincipalName != nil {
                map["AppPrincipalName"] = self.appPrincipalName!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.foreignAppId != nil {
                map["ForeignAppId"] = self.foreignAppId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppPrincipalName"] as? String {
                self.appPrincipalName = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DelegatedScope"] as? [String: Any?] {
                var model = ProvisionExternalApplicationResponseBody.ExternalApplication.DelegatedScope()
                model.fromMap(value)
                self.delegatedScope = model
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["ForeignAppId"] as? String {
                self.foreignAppId = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var externalApplication: ProvisionExternalApplicationResponseBody.ExternalApplication?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.externalApplication?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalApplication != nil {
            map["ExternalApplication"] = self.externalApplication?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExternalApplication"] as? [String: Any?] {
            var model = ProvisionExternalApplicationResponseBody.ExternalApplication()
            model.fromMap(value)
            self.externalApplication = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ProvisionExternalApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProvisionExternalApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProvisionExternalApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveClientIdFromOIDCProviderRequest : Tea.TeaModel {
    public var clientId: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["OIDCProviderName"] as? String {
            self.OIDCProviderName = value
        }
    }
}

public class RemoveClientIdFromOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["ClientIds"] as? String {
                self.clientIds = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Fingerprints"] as? String {
                self.fingerprints = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IssuanceLimitTime"] as? Int64 {
                self.issuanceLimitTime = value
            }
            if let value = dict["IssuerUrl"] as? String {
                self.issuerUrl = value
            }
            if let value = dict["OIDCProviderName"] as? String {
                self.OIDCProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var OIDCProvider: RemoveClientIdFromOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProvider"] as? [String: Any?] {
            var model = RemoveClientIdFromOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(value)
            self.OIDCProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveClientIdFromOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveClientIdFromOIDCProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveClientIdFromOIDCProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveFingerprintFromOIDCProviderRequest : Tea.TeaModel {
    public var fingerprint: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["OIDCProviderName"] as? String {
            self.OIDCProviderName = value
        }
    }
}

public class RemoveFingerprintFromOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["ClientIds"] as? String {
                self.clientIds = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Fingerprints"] as? String {
                self.fingerprints = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IssuanceLimitTime"] as? Int64 {
                self.issuanceLimitTime = value
            }
            if let value = dict["IssuerUrl"] as? String {
                self.issuerUrl = value
            }
            if let value = dict["OIDCProviderName"] as? String {
                self.OIDCProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var OIDCProvider: RemoveFingerprintFromOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProvider"] as? [String: Any?] {
            var model = RemoveFingerprintFromOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(value)
            self.OIDCProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveFingerprintFromOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveFingerprintFromOIDCProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveFingerprintFromOIDCProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveUserFromGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class RemoveUserFromGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveUserFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserFromGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveUserFromGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestoreAccessKeyFromRecycleBinRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class RestoreAccessKeyFromRecycleBinResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestoreAccessKeyFromRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestoreAccessKeyFromRecycleBinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestoreAccessKeyFromRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestoreUserFromRecycleBinRequest : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class RestoreUserFromRecycleBinResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestoreUserFromRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestoreUserFromRecycleBinResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestoreUserFromRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDefaultDomainRequest : Tea.TeaModel {
    public var defaultDomainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultDomainName != nil {
            map["DefaultDomainName"] = self.defaultDomainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultDomainName"] as? String {
            self.defaultDomainName = value
        }
    }
}

public class SetDefaultDomainResponseBody : Tea.TeaModel {
    public var defaultDomainName: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultDomainName != nil {
            map["DefaultDomainName"] = self.defaultDomainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultDomainName"] as? String {
            self.defaultDomainName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetDefaultDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDefaultDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDefaultDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetPasswordPolicyRequest : Tea.TeaModel {
    public var hardExpire: Bool?

    public var maxLoginAttemps: Int32?

    public var maxPasswordAge: Int32?

    public var minimumPasswordDifferentCharacter: Int32?

    public var minimumPasswordLength: Int32?

    public var passwordNotContainUserName: Bool?

    public var passwordReusePrevention: Int32?

    public var requireLowercaseCharacters: Bool?

    public var requireNumbers: Bool?

    public var requireSymbols: Bool?

    public var requireUppercaseCharacters: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hardExpire != nil {
            map["HardExpire"] = self.hardExpire!
        }
        if self.maxLoginAttemps != nil {
            map["MaxLoginAttemps"] = self.maxLoginAttemps!
        }
        if self.maxPasswordAge != nil {
            map["MaxPasswordAge"] = self.maxPasswordAge!
        }
        if self.minimumPasswordDifferentCharacter != nil {
            map["MinimumPasswordDifferentCharacter"] = self.minimumPasswordDifferentCharacter!
        }
        if self.minimumPasswordLength != nil {
            map["MinimumPasswordLength"] = self.minimumPasswordLength!
        }
        if self.passwordNotContainUserName != nil {
            map["PasswordNotContainUserName"] = self.passwordNotContainUserName!
        }
        if self.passwordReusePrevention != nil {
            map["PasswordReusePrevention"] = self.passwordReusePrevention!
        }
        if self.requireLowercaseCharacters != nil {
            map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
        }
        if self.requireNumbers != nil {
            map["RequireNumbers"] = self.requireNumbers!
        }
        if self.requireSymbols != nil {
            map["RequireSymbols"] = self.requireSymbols!
        }
        if self.requireUppercaseCharacters != nil {
            map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HardExpire"] as? Bool {
            self.hardExpire = value
        }
        if let value = dict["MaxLoginAttemps"] as? Int32 {
            self.maxLoginAttemps = value
        }
        if let value = dict["MaxPasswordAge"] as? Int32 {
            self.maxPasswordAge = value
        }
        if let value = dict["MinimumPasswordDifferentCharacter"] as? Int32 {
            self.minimumPasswordDifferentCharacter = value
        }
        if let value = dict["MinimumPasswordLength"] as? Int32 {
            self.minimumPasswordLength = value
        }
        if let value = dict["PasswordNotContainUserName"] as? Bool {
            self.passwordNotContainUserName = value
        }
        if let value = dict["PasswordReusePrevention"] as? Int32 {
            self.passwordReusePrevention = value
        }
        if let value = dict["RequireLowercaseCharacters"] as? Bool {
            self.requireLowercaseCharacters = value
        }
        if let value = dict["RequireNumbers"] as? Bool {
            self.requireNumbers = value
        }
        if let value = dict["RequireSymbols"] as? Bool {
            self.requireSymbols = value
        }
        if let value = dict["RequireUppercaseCharacters"] as? Bool {
            self.requireUppercaseCharacters = value
        }
    }
}

public class SetPasswordPolicyResponseBody : Tea.TeaModel {
    public class PasswordPolicy : Tea.TeaModel {
        public var hardExpire: Bool?

        public var maxLoginAttemps: Int32?

        public var maxPasswordAge: Int32?

        public var minimumPasswordDifferentCharacter: Int32?

        public var minimumPasswordLength: Int32?

        public var passwordNotContainUserName: Bool?

        public var passwordReusePrevention: Int32?

        public var requireLowercaseCharacters: Bool?

        public var requireNumbers: Bool?

        public var requireSymbols: Bool?

        public var requireUppercaseCharacters: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hardExpire != nil {
                map["HardExpire"] = self.hardExpire!
            }
            if self.maxLoginAttemps != nil {
                map["MaxLoginAttemps"] = self.maxLoginAttemps!
            }
            if self.maxPasswordAge != nil {
                map["MaxPasswordAge"] = self.maxPasswordAge!
            }
            if self.minimumPasswordDifferentCharacter != nil {
                map["MinimumPasswordDifferentCharacter"] = self.minimumPasswordDifferentCharacter!
            }
            if self.minimumPasswordLength != nil {
                map["MinimumPasswordLength"] = self.minimumPasswordLength!
            }
            if self.passwordNotContainUserName != nil {
                map["PasswordNotContainUserName"] = self.passwordNotContainUserName!
            }
            if self.passwordReusePrevention != nil {
                map["PasswordReusePrevention"] = self.passwordReusePrevention!
            }
            if self.requireLowercaseCharacters != nil {
                map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
            }
            if self.requireNumbers != nil {
                map["RequireNumbers"] = self.requireNumbers!
            }
            if self.requireSymbols != nil {
                map["RequireSymbols"] = self.requireSymbols!
            }
            if self.requireUppercaseCharacters != nil {
                map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HardExpire"] as? Bool {
                self.hardExpire = value
            }
            if let value = dict["MaxLoginAttemps"] as? Int32 {
                self.maxLoginAttemps = value
            }
            if let value = dict["MaxPasswordAge"] as? Int32 {
                self.maxPasswordAge = value
            }
            if let value = dict["MinimumPasswordDifferentCharacter"] as? Int32 {
                self.minimumPasswordDifferentCharacter = value
            }
            if let value = dict["MinimumPasswordLength"] as? Int32 {
                self.minimumPasswordLength = value
            }
            if let value = dict["PasswordNotContainUserName"] as? Bool {
                self.passwordNotContainUserName = value
            }
            if let value = dict["PasswordReusePrevention"] as? Int32 {
                self.passwordReusePrevention = value
            }
            if let value = dict["RequireLowercaseCharacters"] as? Bool {
                self.requireLowercaseCharacters = value
            }
            if let value = dict["RequireNumbers"] as? Bool {
                self.requireNumbers = value
            }
            if let value = dict["RequireSymbols"] as? Bool {
                self.requireSymbols = value
            }
            if let value = dict["RequireUppercaseCharacters"] as? Bool {
                self.requireUppercaseCharacters = value
            }
        }
    }
    public var passwordPolicy: SetPasswordPolicyResponseBody.PasswordPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordPolicy != nil {
            map["PasswordPolicy"] = self.passwordPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PasswordPolicy"] as? [String: Any?] {
            var model = SetPasswordPolicyResponseBody.PasswordPolicy()
            model.fromMap(value)
            self.passwordPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetPasswordPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPasswordPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPasswordPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetSecurityPreferenceRequest : Tea.TeaModel {
    public var allowUserToChangePassword: Bool?

    public var allowUserToLoginWithPasskey: Bool?

    public var allowUserToManageAccessKeys: Bool?

    public var allowUserToManageMFADevices: Bool?

    public var allowUserToManagePersonalDingTalk: Bool?

    public var enableSaveMFATicket: Bool?

    public var loginNetworkMasks: String?

    public var loginSessionDuration: Int32?

    public var MFAOperationForLogin: String?

    public var operationForRiskLogin: String?

    public var verificationTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowUserToChangePassword != nil {
            map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
        }
        if self.allowUserToLoginWithPasskey != nil {
            map["AllowUserToLoginWithPasskey"] = self.allowUserToLoginWithPasskey!
        }
        if self.allowUserToManageAccessKeys != nil {
            map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
        }
        if self.allowUserToManageMFADevices != nil {
            map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
        }
        if self.allowUserToManagePersonalDingTalk != nil {
            map["AllowUserToManagePersonalDingTalk"] = self.allowUserToManagePersonalDingTalk!
        }
        if self.enableSaveMFATicket != nil {
            map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
        }
        if self.loginNetworkMasks != nil {
            map["LoginNetworkMasks"] = self.loginNetworkMasks!
        }
        if self.loginSessionDuration != nil {
            map["LoginSessionDuration"] = self.loginSessionDuration!
        }
        if self.MFAOperationForLogin != nil {
            map["MFAOperationForLogin"] = self.MFAOperationForLogin!
        }
        if self.operationForRiskLogin != nil {
            map["OperationForRiskLogin"] = self.operationForRiskLogin!
        }
        if self.verificationTypes != nil {
            map["VerificationTypes"] = self.verificationTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowUserToChangePassword"] as? Bool {
            self.allowUserToChangePassword = value
        }
        if let value = dict["AllowUserToLoginWithPasskey"] as? Bool {
            self.allowUserToLoginWithPasskey = value
        }
        if let value = dict["AllowUserToManageAccessKeys"] as? Bool {
            self.allowUserToManageAccessKeys = value
        }
        if let value = dict["AllowUserToManageMFADevices"] as? Bool {
            self.allowUserToManageMFADevices = value
        }
        if let value = dict["AllowUserToManagePersonalDingTalk"] as? Bool {
            self.allowUserToManagePersonalDingTalk = value
        }
        if let value = dict["EnableSaveMFATicket"] as? Bool {
            self.enableSaveMFATicket = value
        }
        if let value = dict["LoginNetworkMasks"] as? String {
            self.loginNetworkMasks = value
        }
        if let value = dict["LoginSessionDuration"] as? Int32 {
            self.loginSessionDuration = value
        }
        if let value = dict["MFAOperationForLogin"] as? String {
            self.MFAOperationForLogin = value
        }
        if let value = dict["OperationForRiskLogin"] as? String {
            self.operationForRiskLogin = value
        }
        if let value = dict["VerificationTypes"] as? [String] {
            self.verificationTypes = value
        }
    }
}

public class SetSecurityPreferenceShrinkRequest : Tea.TeaModel {
    public var allowUserToChangePassword: Bool?

    public var allowUserToLoginWithPasskey: Bool?

    public var allowUserToManageAccessKeys: Bool?

    public var allowUserToManageMFADevices: Bool?

    public var allowUserToManagePersonalDingTalk: Bool?

    public var enableSaveMFATicket: Bool?

    public var loginNetworkMasks: String?

    public var loginSessionDuration: Int32?

    public var MFAOperationForLogin: String?

    public var operationForRiskLogin: String?

    public var verificationTypesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowUserToChangePassword != nil {
            map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
        }
        if self.allowUserToLoginWithPasskey != nil {
            map["AllowUserToLoginWithPasskey"] = self.allowUserToLoginWithPasskey!
        }
        if self.allowUserToManageAccessKeys != nil {
            map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
        }
        if self.allowUserToManageMFADevices != nil {
            map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
        }
        if self.allowUserToManagePersonalDingTalk != nil {
            map["AllowUserToManagePersonalDingTalk"] = self.allowUserToManagePersonalDingTalk!
        }
        if self.enableSaveMFATicket != nil {
            map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
        }
        if self.loginNetworkMasks != nil {
            map["LoginNetworkMasks"] = self.loginNetworkMasks!
        }
        if self.loginSessionDuration != nil {
            map["LoginSessionDuration"] = self.loginSessionDuration!
        }
        if self.MFAOperationForLogin != nil {
            map["MFAOperationForLogin"] = self.MFAOperationForLogin!
        }
        if self.operationForRiskLogin != nil {
            map["OperationForRiskLogin"] = self.operationForRiskLogin!
        }
        if self.verificationTypesShrink != nil {
            map["VerificationTypes"] = self.verificationTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowUserToChangePassword"] as? Bool {
            self.allowUserToChangePassword = value
        }
        if let value = dict["AllowUserToLoginWithPasskey"] as? Bool {
            self.allowUserToLoginWithPasskey = value
        }
        if let value = dict["AllowUserToManageAccessKeys"] as? Bool {
            self.allowUserToManageAccessKeys = value
        }
        if let value = dict["AllowUserToManageMFADevices"] as? Bool {
            self.allowUserToManageMFADevices = value
        }
        if let value = dict["AllowUserToManagePersonalDingTalk"] as? Bool {
            self.allowUserToManagePersonalDingTalk = value
        }
        if let value = dict["EnableSaveMFATicket"] as? Bool {
            self.enableSaveMFATicket = value
        }
        if let value = dict["LoginNetworkMasks"] as? String {
            self.loginNetworkMasks = value
        }
        if let value = dict["LoginSessionDuration"] as? Int32 {
            self.loginSessionDuration = value
        }
        if let value = dict["MFAOperationForLogin"] as? String {
            self.MFAOperationForLogin = value
        }
        if let value = dict["OperationForRiskLogin"] as? String {
            self.operationForRiskLogin = value
        }
        if let value = dict["VerificationTypes"] as? String {
            self.verificationTypesShrink = value
        }
    }
}

public class SetSecurityPreferenceResponseBody : Tea.TeaModel {
    public class SecurityPreference : Tea.TeaModel {
        public class AccessKeyPreference : Tea.TeaModel {
            public var allowUserToManageAccessKeys: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageAccessKeys != nil {
                    map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManageAccessKeys"] as? Bool {
                    self.allowUserToManageAccessKeys = value
                }
            }
        }
        public class LoginProfilePreference : Tea.TeaModel {
            public var allowUserToChangePassword: Bool?

            public var allowUserToLoginWithPasskey: Bool?

            public var enableSaveMFATicket: Bool?

            public var loginNetworkMasks: String?

            public var loginSessionDuration: Int32?

            public var MFAOperationForLogin: String?

            public var operationForRiskLogin: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToChangePassword != nil {
                    map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
                }
                if self.allowUserToLoginWithPasskey != nil {
                    map["AllowUserToLoginWithPasskey"] = self.allowUserToLoginWithPasskey!
                }
                if self.enableSaveMFATicket != nil {
                    map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
                }
                if self.loginNetworkMasks != nil {
                    map["LoginNetworkMasks"] = self.loginNetworkMasks!
                }
                if self.loginSessionDuration != nil {
                    map["LoginSessionDuration"] = self.loginSessionDuration!
                }
                if self.MFAOperationForLogin != nil {
                    map["MFAOperationForLogin"] = self.MFAOperationForLogin!
                }
                if self.operationForRiskLogin != nil {
                    map["OperationForRiskLogin"] = self.operationForRiskLogin!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToChangePassword"] as? Bool {
                    self.allowUserToChangePassword = value
                }
                if let value = dict["AllowUserToLoginWithPasskey"] as? Bool {
                    self.allowUserToLoginWithPasskey = value
                }
                if let value = dict["EnableSaveMFATicket"] as? Bool {
                    self.enableSaveMFATicket = value
                }
                if let value = dict["LoginNetworkMasks"] as? String {
                    self.loginNetworkMasks = value
                }
                if let value = dict["LoginSessionDuration"] as? Int32 {
                    self.loginSessionDuration = value
                }
                if let value = dict["MFAOperationForLogin"] as? String {
                    self.MFAOperationForLogin = value
                }
                if let value = dict["OperationForRiskLogin"] as? String {
                    self.operationForRiskLogin = value
                }
            }
        }
        public class MFAPreference : Tea.TeaModel {
            public var allowUserToManageMFADevices: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageMFADevices != nil {
                    map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManageMFADevices"] as? Bool {
                    self.allowUserToManageMFADevices = value
                }
            }
        }
        public class MaxIdleDays : Tea.TeaModel {
            public var maxIdleDaysForAccessKeys: Int32?

            public var maxIdleDaysForUsers: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxIdleDaysForAccessKeys != nil {
                    map["MaxIdleDaysForAccessKeys"] = self.maxIdleDaysForAccessKeys!
                }
                if self.maxIdleDaysForUsers != nil {
                    map["MaxIdleDaysForUsers"] = self.maxIdleDaysForUsers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MaxIdleDaysForAccessKeys"] as? Int32 {
                    self.maxIdleDaysForAccessKeys = value
                }
                if let value = dict["MaxIdleDaysForUsers"] as? Int32 {
                    self.maxIdleDaysForUsers = value
                }
            }
        }
        public class PersonalInfoPreference : Tea.TeaModel {
            public var allowUserToManagePersonalDingTalk: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManagePersonalDingTalk != nil {
                    map["AllowUserToManagePersonalDingTalk"] = self.allowUserToManagePersonalDingTalk!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManagePersonalDingTalk"] as? Bool {
                    self.allowUserToManagePersonalDingTalk = value
                }
            }
        }
        public class VerificationPreference : Tea.TeaModel {
            public var verificationTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.verificationTypes != nil {
                    map["VerificationTypes"] = self.verificationTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VerificationTypes"] as? [String] {
                    self.verificationTypes = value
                }
            }
        }
        public var accessKeyPreference: SetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference?

        public var loginProfilePreference: SetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference?

        public var MFAPreference: SetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference?

        public var maxIdleDays: SetSecurityPreferenceResponseBody.SecurityPreference.MaxIdleDays?

        public var personalInfoPreference: SetSecurityPreferenceResponseBody.SecurityPreference.PersonalInfoPreference?

        public var verificationPreference: SetSecurityPreferenceResponseBody.SecurityPreference.VerificationPreference?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessKeyPreference?.validate()
            try self.loginProfilePreference?.validate()
            try self.MFAPreference?.validate()
            try self.maxIdleDays?.validate()
            try self.personalInfoPreference?.validate()
            try self.verificationPreference?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyPreference != nil {
                map["AccessKeyPreference"] = self.accessKeyPreference?.toMap()
            }
            if self.loginProfilePreference != nil {
                map["LoginProfilePreference"] = self.loginProfilePreference?.toMap()
            }
            if self.MFAPreference != nil {
                map["MFAPreference"] = self.MFAPreference?.toMap()
            }
            if self.maxIdleDays != nil {
                map["MaxIdleDays"] = self.maxIdleDays?.toMap()
            }
            if self.personalInfoPreference != nil {
                map["PersonalInfoPreference"] = self.personalInfoPreference?.toMap()
            }
            if self.verificationPreference != nil {
                map["VerificationPreference"] = self.verificationPreference?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyPreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference()
                model.fromMap(value)
                self.accessKeyPreference = model
            }
            if let value = dict["LoginProfilePreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference()
                model.fromMap(value)
                self.loginProfilePreference = model
            }
            if let value = dict["MFAPreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference()
                model.fromMap(value)
                self.MFAPreference = model
            }
            if let value = dict["MaxIdleDays"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.MaxIdleDays()
                model.fromMap(value)
                self.maxIdleDays = model
            }
            if let value = dict["PersonalInfoPreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.PersonalInfoPreference()
                model.fromMap(value)
                self.personalInfoPreference = model
            }
            if let value = dict["VerificationPreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.VerificationPreference()
                model.fromMap(value)
                self.verificationPreference = model
            }
        }
    }
    public var requestId: String?

    public var securityPreference: SetSecurityPreferenceResponseBody.SecurityPreference?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityPreference?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPreference != nil {
            map["SecurityPreference"] = self.securityPreference?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityPreference"] as? [String: Any?] {
            var model = SetSecurityPreferenceResponseBody.SecurityPreference()
            model.fromMap(value)
            self.securityPreference = model
        }
    }
}

public class SetSecurityPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSecurityPreferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetSecurityPreferenceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetUserSsoSettingsRequest : Tea.TeaModel {
    public var auxiliaryDomain: String?

    public var metadataDocument: String?

    public var ssoEnabled: Bool?

    public var ssoLoginWithDomain: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auxiliaryDomain != nil {
            map["AuxiliaryDomain"] = self.auxiliaryDomain!
        }
        if self.metadataDocument != nil {
            map["MetadataDocument"] = self.metadataDocument!
        }
        if self.ssoEnabled != nil {
            map["SsoEnabled"] = self.ssoEnabled!
        }
        if self.ssoLoginWithDomain != nil {
            map["SsoLoginWithDomain"] = self.ssoLoginWithDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuxiliaryDomain"] as? String {
            self.auxiliaryDomain = value
        }
        if let value = dict["MetadataDocument"] as? String {
            self.metadataDocument = value
        }
        if let value = dict["SsoEnabled"] as? Bool {
            self.ssoEnabled = value
        }
        if let value = dict["SsoLoginWithDomain"] as? Bool {
            self.ssoLoginWithDomain = value
        }
    }
}

public class SetUserSsoSettingsResponseBody : Tea.TeaModel {
    public class UserSsoSettings : Tea.TeaModel {
        public var auxiliaryDomain: String?

        public var metadataDocument: String?

        public var ssoEnabled: Bool?

        public var ssoLoginWithDomain: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auxiliaryDomain != nil {
                map["AuxiliaryDomain"] = self.auxiliaryDomain!
            }
            if self.metadataDocument != nil {
                map["MetadataDocument"] = self.metadataDocument!
            }
            if self.ssoEnabled != nil {
                map["SsoEnabled"] = self.ssoEnabled!
            }
            if self.ssoLoginWithDomain != nil {
                map["SsoLoginWithDomain"] = self.ssoLoginWithDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuxiliaryDomain"] as? String {
                self.auxiliaryDomain = value
            }
            if let value = dict["MetadataDocument"] as? String {
                self.metadataDocument = value
            }
            if let value = dict["SsoEnabled"] as? Bool {
                self.ssoEnabled = value
            }
            if let value = dict["SsoLoginWithDomain"] as? Bool {
                self.ssoLoginWithDomain = value
            }
        }
    }
    public var requestId: String?

    public var userSsoSettings: SetUserSsoSettingsResponseBody.UserSsoSettings?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userSsoSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userSsoSettings != nil {
            map["UserSsoSettings"] = self.userSsoSettings?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserSsoSettings"] as? [String: Any?] {
            var model = SetUserSsoSettingsResponseBody.UserSsoSettings()
            model.fromMap(value)
            self.userSsoSettings = model
        }
    }
}

public class SetUserSsoSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserSsoSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetUserSsoSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetVerificationInfoRequest : Tea.TeaModel {
    public var email: String?

    public var mobilePhone: String?

    public var userPrincipalName: String?

    public var verifyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.mobilePhone != nil {
            map["MobilePhone"] = self.mobilePhone!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        if self.verifyType != nil {
            map["VerifyType"] = self.verifyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["MobilePhone"] as? String {
            self.mobilePhone = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
        if let value = dict["VerifyType"] as? String {
            self.verifyType = value
        }
    }
}

public class SetVerificationInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetVerificationInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetVerificationInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetVerificationInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var resourceId: [String]?

    public var resourcePrincipalName: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourcePrincipalName != nil {
            map["ResourcePrincipalName"] = self.resourcePrincipalName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourcePrincipalName"] as? [String] {
            self.resourcePrincipalName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindMFADeviceRequest : Tea.TeaModel {
    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class UnbindMFADeviceResponseBody : Tea.TeaModel {
    public class MFADevice : Tea.TeaModel {
        public var serialNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
        }
    }
    public var MFADevice: UnbindMFADeviceResponseBody.MFADevice?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.MFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.MFADevice != nil {
            map["MFADevice"] = self.MFADevice?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFADevice"] as? [String: Any?] {
            var model = UnbindMFADeviceResponseBody.MFADevice()
            model.fromMap(value)
            self.MFADevice = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnbindMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindMFADeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindMFADeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindVerificationRequest : Tea.TeaModel {
    public var email: String?

    public var mobilePhone: String?

    public var userPrincipalName: String?

    public var verifyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.mobilePhone != nil {
            map["MobilePhone"] = self.mobilePhone!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        if self.verifyType != nil {
            map["VerifyType"] = self.verifyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["MobilePhone"] as? String {
            self.mobilePhone = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
        if let value = dict["VerifyType"] as? String {
            self.verifyType = value
        }
    }
}

public class UnbindVerificationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnbindVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindVerificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

    public var resourcePrincipalName: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourcePrincipalName != nil {
            map["ResourcePrincipalName"] = self.resourcePrincipalName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourcePrincipalName"] as? [String] {
            self.resourcePrincipalName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAccessKeyRequest : Tea.TeaModel {
    public var status: String?

    public var userAccessKeyId: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class UpdateAccessKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccessKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAccessKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public var newAccessTokenValidity: Int32?

    public var newDisplayName: String?

    public var newIsMultiTenant: Bool?

    public var newPredefinedScopes: String?

    public var newRedirectUris: String?

    public var newRefreshTokenValidity: Int32?

    public var newRequiredScopes: String?

    public var newSecretRequired: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.newAccessTokenValidity != nil {
            map["NewAccessTokenValidity"] = self.newAccessTokenValidity!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.newIsMultiTenant != nil {
            map["NewIsMultiTenant"] = self.newIsMultiTenant!
        }
        if self.newPredefinedScopes != nil {
            map["NewPredefinedScopes"] = self.newPredefinedScopes!
        }
        if self.newRedirectUris != nil {
            map["NewRedirectUris"] = self.newRedirectUris!
        }
        if self.newRefreshTokenValidity != nil {
            map["NewRefreshTokenValidity"] = self.newRefreshTokenValidity!
        }
        if self.newRequiredScopes != nil {
            map["NewRequiredScopes"] = self.newRequiredScopes!
        }
        if self.newSecretRequired != nil {
            map["NewSecretRequired"] = self.newSecretRequired!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["NewAccessTokenValidity"] as? Int32 {
            self.newAccessTokenValidity = value
        }
        if let value = dict["NewDisplayName"] as? String {
            self.newDisplayName = value
        }
        if let value = dict["NewIsMultiTenant"] as? Bool {
            self.newIsMultiTenant = value
        }
        if let value = dict["NewPredefinedScopes"] as? String {
            self.newPredefinedScopes = value
        }
        if let value = dict["NewRedirectUris"] as? String {
            self.newRedirectUris = value
        }
        if let value = dict["NewRefreshTokenValidity"] as? Int32 {
            self.newRefreshTokenValidity = value
        }
        if let value = dict["NewRequiredScopes"] as? String {
            self.newRequiredScopes = value
        }
        if let value = dict["NewSecretRequired"] as? Bool {
            self.newSecretRequired = value
        }
    }
}

public class UpdateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Required"] as? Bool {
                            self.required_ = value
                        }
                    }
                }
                public var predefinedScope: [UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PredefinedScope"] as? [Any?] {
                        var tmp : [UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in value {
                            if v != nil {
                                var model = UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PredefinedScopes"] as? [String: Any?] {
                    var model = UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes()
                    model.fromMap(value)
                    self.predefinedScopes = model
                }
            }
        }
        public class RedirectUris : Tea.TeaModel {
            public var redirectUri: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.redirectUri != nil {
                    map["RedirectUri"] = self.redirectUri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RedirectUri"] as? [String] {
                    self.redirectUri = value
                }
            }
        }
        public var accessTokenValidity: Int32?

        public var accountId: String?

        public var appId: String?

        public var appName: String?

        public var appType: String?

        public var createDate: String?

        public var delegatedScope: UpdateApplicationResponseBody.Application.DelegatedScope?

        public var displayName: String?

        public var isMultiTenant: Bool?

        public var redirectUris: UpdateApplicationResponseBody.Application.RedirectUris?

        public var refreshTokenValidity: Int32?

        public var secretRequired: Bool?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
            try self.redirectUris?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.isMultiTenant != nil {
                map["IsMultiTenant"] = self.isMultiTenant!
            }
            if self.redirectUris != nil {
                map["RedirectUris"] = self.redirectUris?.toMap()
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenValidity"] as? Int32 {
                self.accessTokenValidity = value
            }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DelegatedScope"] as? [String: Any?] {
                var model = UpdateApplicationResponseBody.Application.DelegatedScope()
                model.fromMap(value)
                self.delegatedScope = model
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["IsMultiTenant"] as? Bool {
                self.isMultiTenant = value
            }
            if let value = dict["RedirectUris"] as? [String: Any?] {
                var model = UpdateApplicationResponseBody.Application.RedirectUris()
                model.fromMap(value)
                self.redirectUris = model
            }
            if let value = dict["RefreshTokenValidity"] as? Int32 {
                self.refreshTokenValidity = value
            }
            if let value = dict["SecretRequired"] as? Bool {
                self.secretRequired = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var application: UpdateApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Application"] as? [String: Any?] {
            var model = UpdateApplicationResponseBody.Application()
            model.fromMap(value)
            self.application = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var newComments: String?

    public var newDisplayName: String?

    public var newGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.newComments != nil {
            map["NewComments"] = self.newComments!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.newGroupName != nil {
            map["NewGroupName"] = self.newGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["NewComments"] as? String {
            self.newComments = value
        }
        if let value = dict["NewDisplayName"] as? String {
            self.newDisplayName = value
        }
        if let value = dict["NewGroupName"] as? String {
            self.newGroupName = value
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var groupId: String?

        public var groupName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var group: UpdateGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Group"] as? [String: Any?] {
            var model = UpdateGroupResponseBody.Group()
            model.fromMap(value)
            self.group = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLoginProfileRequest : Tea.TeaModel {
    public var MFABindRequired: Bool?

    public var password: String?

    public var passwordResetRequired: Bool?

    public var status: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.MFABindRequired != nil {
            map["MFABindRequired"] = self.MFABindRequired!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordResetRequired != nil {
            map["PasswordResetRequired"] = self.passwordResetRequired!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFABindRequired"] as? Bool {
            self.MFABindRequired = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["PasswordResetRequired"] as? Bool {
            self.passwordResetRequired = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class UpdateLoginProfileResponseBody : Tea.TeaModel {
    public class LoginProfile : Tea.TeaModel {
        public var autoDisableLoginStatus: String?

        public var MFABindRequired: Bool?

        public var passwordResetRequired: Bool?

        public var status: String?

        public var updateDate: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoDisableLoginStatus != nil {
                map["AutoDisableLoginStatus"] = self.autoDisableLoginStatus!
            }
            if self.MFABindRequired != nil {
                map["MFABindRequired"] = self.MFABindRequired!
            }
            if self.passwordResetRequired != nil {
                map["PasswordResetRequired"] = self.passwordResetRequired!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoDisableLoginStatus"] as? String {
                self.autoDisableLoginStatus = value
            }
            if let value = dict["MFABindRequired"] as? Bool {
                self.MFABindRequired = value
            }
            if let value = dict["PasswordResetRequired"] as? Bool {
                self.passwordResetRequired = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["UserPrincipalName"] as? String {
                self.userPrincipalName = value
            }
        }
    }
    public var loginProfile: UpdateLoginProfileResponseBody.LoginProfile?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginProfile != nil {
            map["LoginProfile"] = self.loginProfile?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginProfile"] as? [String: Any?] {
            var model = UpdateLoginProfileResponseBody.LoginProfile()
            model.fromMap(value)
            self.loginProfile = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoginProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateLoginProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOIDCProviderRequest : Tea.TeaModel {
    public var clientIds: String?

    public var issuanceLimitTime: Int64?

    public var newDescription: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientIds != nil {
            map["ClientIds"] = self.clientIds!
        }
        if self.issuanceLimitTime != nil {
            map["IssuanceLimitTime"] = self.issuanceLimitTime!
        }
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? String {
            self.clientIds = value
        }
        if let value = dict["IssuanceLimitTime"] as? Int64 {
            self.issuanceLimitTime = value
        }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["OIDCProviderName"] as? String {
            self.OIDCProviderName = value
        }
    }
}

public class UpdateOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["ClientIds"] as? String {
                self.clientIds = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Fingerprints"] as? String {
                self.fingerprints = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IssuanceLimitTime"] as? Int64 {
                self.issuanceLimitTime = value
            }
            if let value = dict["IssuerUrl"] as? String {
                self.issuerUrl = value
            }
            if let value = dict["OIDCProviderName"] as? String {
                self.OIDCProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var OIDCProvider: UpdateOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OIDCProvider"] as? [String: Any?] {
            var model = UpdateOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(value)
            self.OIDCProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOIDCProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateOIDCProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePasskeyRequest : Tea.TeaModel {
    public var passkeyId: String?

    public var passkeyName: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passkeyId != nil {
            map["PasskeyId"] = self.passkeyId!
        }
        if self.passkeyName != nil {
            map["PasskeyName"] = self.passkeyName!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PasskeyId"] as? String {
            self.passkeyId = value
        }
        if let value = dict["PasskeyName"] as? String {
            self.passkeyName = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class UpdatePasskeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePasskeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePasskeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePasskeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSAMLProviderRequest : Tea.TeaModel {
    public var newDescription: String?

    public var newEncodedSAMLMetadataDocument: String?

    public var SAMLProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newEncodedSAMLMetadataDocument != nil {
            map["NewEncodedSAMLMetadataDocument"] = self.newEncodedSAMLMetadataDocument!
        }
        if self.SAMLProviderName != nil {
            map["SAMLProviderName"] = self.SAMLProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["NewEncodedSAMLMetadataDocument"] as? String {
            self.newEncodedSAMLMetadataDocument = value
        }
        if let value = dict["SAMLProviderName"] as? String {
            self.SAMLProviderName = value
        }
    }
}

public class UpdateSAMLProviderResponseBody : Tea.TeaModel {
    public class SAMLProvider : Tea.TeaModel {
        public var arn: String?

        public var createDate: String?

        public var description_: String?

        public var SAMLProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.SAMLProviderName != nil {
                map["SAMLProviderName"] = self.SAMLProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["SAMLProviderName"] as? String {
                self.SAMLProviderName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var requestId: String?

    public var SAMLProvider: UpdateSAMLProviderResponseBody.SAMLProvider?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLProvider != nil {
            map["SAMLProvider"] = self.SAMLProvider?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLProvider"] as? [String: Any?] {
            var model = UpdateSAMLProviderResponseBody.SAMLProvider()
            model.fromMap(value)
            self.SAMLProvider = model
        }
    }
}

public class UpdateSAMLProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSAMLProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSAMLProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var newComments: String?

    public var newDisplayName: String?

    public var newEmail: String?

    public var newMobilePhone: String?

    public var newUserPrincipalName: String?

    public var userId: String?

    public var userPrincipalName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newComments != nil {
            map["NewComments"] = self.newComments!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.newEmail != nil {
            map["NewEmail"] = self.newEmail!
        }
        if self.newMobilePhone != nil {
            map["NewMobilePhone"] = self.newMobilePhone!
        }
        if self.newUserPrincipalName != nil {
            map["NewUserPrincipalName"] = self.newUserPrincipalName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewComments"] as? String {
            self.newComments = value
        }
        if let value = dict["NewDisplayName"] as? String {
            self.newDisplayName = value
        }
        if let value = dict["NewEmail"] as? String {
            self.newEmail = value
        }
        if let value = dict["NewMobilePhone"] as? String {
            self.newMobilePhone = value
        }
        if let value = dict["NewUserPrincipalName"] as? String {
            self.newUserPrincipalName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserPrincipalName"] as? String {
            self.userPrincipalName = value
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var lastLoginDate: String?

        public var mobilePhone: String?

        public var provisionType: String?

        public var updateDate: String?

        public var userId: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.lastLoginDate != nil {
                map["LastLoginDate"] = self.lastLoginDate!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["LastLoginDate"] as? String {
                self.lastLoginDate = value
            }
            if let value = dict["MobilePhone"] as? String {
                self.mobilePhone = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserPrincipalName"] as? String {
                self.userPrincipalName = value
            }
        }
    }
    public var requestId: String?

    public var user: UpdateUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = UpdateUserResponseBody.User()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
