.class public final Lcom/oplus/aiunit/core/data/UnitState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/core/data/UnitState;

.field public static final STATE_AVAILABLE:I = 0x1

.field public static final STATE_AVAILABLE_AND_NEW_DOWNLOAD:I = 0x4

.field public static final STATE_AVAILABLE_INTERNET:I = 0x3

.field public static final STATE_AVAILABLE_LOCAL:I = 0x2

.field public static final STATE_UNAVAILABLE:I = 0x0

.field public static final STATE_UNAVAILABLE_DISABLE:I = 0xd

.field public static final STATE_UNAVAILABLE_EXCEPTION:I = 0x38e

.field public static final STATE_UNAVAILABLE_HIGH_TEMPERATURE:I = 0x388

.field public static final STATE_UNAVAILABLE_LOW_BATTERY:I = 0x385

.field public static final STATE_UNAVAILABLE_LOW_MEMORY:I = 0x384

.field public static final STATE_UNAVAILABLE_NEED_DOWNLOAD:I = 0x6

.field public static final STATE_UNAVAILABLE_NO_INTERNET:I = 0x5

.field public static final STATE_UNAVAILABLE_OFFLINE:I = 0xc

.field public static final STATE_UNAVAILABLE_OVERLOAD:I = 0x387

.field public static final STATE_UNAVAILABLE_POWER_SAVE_MODEL:I = 0x386

.field public static final STATE_UNAVAILABLE_PRIVACY_REJECT:I = 0x38a

.field public static final STATE_UNAVAILABLE_URL_EMPTY:I = 0x38b

.field public static final STATE_UNAVAILABLE_USER_APPLYING:I = 0x9

.field public static final STATE_UNAVAILABLE_USER_APPLY_FAILED:I = 0xa

.field public static final STATE_UNAVAILABLE_USER_NO_APPLY:I = 0x8

.field public static final STATE_UNAVAILABLE_USER_NO_AUTHORIZE:I = 0xb

.field public static final STATE_UNAVAILABLE_USER_SWITCH_CLOSE:I = 0x7

.field public static final STATE_UNAVAILABLE_USER_SWITCH_CLOSE_LOCAL_LLM:I = 0xe

.field public static final STATE_UNAVAILABLE_WITH_INTERNET_BY_FORCE_LOCAL:I = 0x389


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/data/UnitState;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/data/UnitState;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/data/UnitState;->INSTANCE:Lcom/oplus/aiunit/core/data/UnitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toErrorCode(I)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->UNKNOWN:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorUrlEmpty:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorPrivacyReject:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorUserForceLocal:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorHighTemperature:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorOverload:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorLowPowerSaveModel:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorLowBattery:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorLowMemory:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorRouteDisabled:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorOffline:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_a
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoAccount:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_b
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorApplyFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorApplying:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoApply:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorSwitchClose:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_f
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoDownload:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_10
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNoInternet:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_11
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    goto :goto_0

    :pswitch_12
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorRouterFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x384
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
