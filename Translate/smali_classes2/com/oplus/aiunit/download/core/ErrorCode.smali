.class public final Lcom/oplus/aiunit/download/core/ErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE_AFTER_DOWNLOAD_CHECK_FAIL:I = 0x6a

.field public static final CODE_BEFORE_DOWNLOAD_CHECK_FAIL:I = 0x67

.field public static final CODE_CHUNK_DOWNLOAD_FAIL:I = 0x69

.field public static final CODE_CONNECTION_FAILED:I = 0x76

.field public static final CODE_DENY_PRIVACY_PERMISSION:I = 0x79

.field public static final CODE_DEVICE_STORAGE_UNAVAILABLE:I = 0x6b

.field public static final CODE_DOWNLOADING_CANCEL:I = 0x6f

.field public static final CODE_DOWNLOADING_FAIL:I = 0x6e

.field public static final CODE_DOWNLOAD_CELLULAR_USER_CANCEL:I = 0x78

.field public static final CODE_DOWNLOAD_CONFIRM_USER_CANCEL:I = 0x77

.field public static final CODE_DOWNLOAD_INTERNET_UNAVAILABLE:I = 0x64

.field public static final CODE_INSTALL_FAIL:I = 0x7b

.field public static final CODE_INTERNET_NOT_MATCH:I = 0x75

.field public static final CODE_INTERNET_UNAVAILABLE:I = 0x7a

.field public static final CODE_INVALID_REQUEST:I = 0x7d

.field public static final CODE_LOCAL_CONFIG_NULL:I = 0x72

.field public static final CODE_NONE:I = 0x0

.field public static final CODE_NO_NEED_DOWNLOAD:I = 0x74

.field public static final CODE_PREPARE_FAIL:I = 0x70

.field public static final CODE_PROTOCOL_CONTENT_LENGTH_INVALID:I = 0x6c

.field public static final CODE_REQUEST_FAIL:I = 0x65

.field public static final CODE_REQUEST_REDIRECT_FAIL:I = 0x66

.field public static final CODE_SERVER_CONFIG_NULL:I = 0x71

.field public static final CODE_SERVICE_DIED:I = 0x7f

.field public static final CODE_SERVICE_NOT_SUPPORT:I = 0x7c

.field public static final CODE_SERVICE_TIMEOUT:I = 0x7e

.field public static final CODE_UNIT_NOT_SUPPORT:I = 0x73

.field public static final CODE_WRITE_FAIL:I = 0x68

.field public static final CODE_WRITE_LENGTH_NOT_MATCH:I = 0x6d

.field public static final INSTANCE:Lcom/oplus/aiunit/download/core/ErrorCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/download/core/ErrorCode;

    invoke-direct {v0}, Lcom/oplus/aiunit/download/core/ErrorCode;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/download/core/ErrorCode;->INSTANCE:Lcom/oplus/aiunit/download/core/ErrorCode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
