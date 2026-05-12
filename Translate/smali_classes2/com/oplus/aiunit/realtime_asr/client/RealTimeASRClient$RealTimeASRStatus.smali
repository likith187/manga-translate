.class public final enum Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealTimeASRStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final Companion:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;

.field public static final enum ERROR_ALGO_INTERNAL:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_ALGO_NOT_READY:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_CONTENT_CHECK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_CONTENT_SAFE_CHECK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_DATA_UPLOAD:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_DECRYPT_ACK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_DECRYPT_REQ:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_ENCRYPT_ACK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_INVALID_ALGO:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_INVALID_HEADER:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_INVALID_PARAMS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_INVALID_REQBODY:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_INVALID_START_LATE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_INVALID_START_MULTI:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_INVALID_TASK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_NET_DISCONNECT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_NET_FAILURE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_NO_INIT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_PROCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_PROCESS_RESP:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_REQ_POST:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_REQ_TIMEOUT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_SERVER_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum ERROR_WAIT_FINAL_TIMEOUT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum STATUS_ASR_COMPLETE_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum STATUS_INIT_ERROR:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum STATUS_INIT_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum STATUS_NET_CONNECTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

.field public static final enum STATUS_RESULT_DATA:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;


# instance fields
.field private final code:I

.field private statusDesc:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;
    .locals 30

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_PARAMS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v1, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_REQBODY:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v2, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_HEADER:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v3, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_START_MULTI:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v4, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_START_LATE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v5, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_SERVER_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v6, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ALGO_NOT_READY:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v7, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_REQ_TIMEOUT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v8, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_ALGO:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v9, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_REQ_POST:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v10, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ALGO_INTERNAL:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v11, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_TASK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v12, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS_RESP:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v13, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DECRYPT_REQ:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v14, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ENCRYPT_ACK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v15, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_CONTENT_CHECK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v16, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_CONTENT_SAFE_CHECK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v17, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DATA_UPLOAD:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v18, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v19, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DECRYPT_ACK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v20, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_WAIT_FINAL_TIMEOUT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v21, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v22, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NO_INIT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v23, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NET_FAILURE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v24, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NET_DISCONNECT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v25, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_NET_CONNECTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v26, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_RESULT_DATA:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v27, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v28, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_ERROR:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    sget-object v29, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_ASR_COMPLETE_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    filled-new-array/range {v0 .. v29}, [Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const-string v1, "\u8bf7\u6c42\u53c2\u6570\u9519\u8bef"

    const-string v2, "ERROR_INVALID_PARAMS"

    const/4 v3, 0x0

    const v4, 0x2dc850

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_PARAMS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc853

    const-string v2, "\u8bf7\u6c42\u4f53\u683c\u5f0f\u5f02\u5e38"

    const-string v3, "ERROR_INVALID_REQBODY"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_REQBODY:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc854

    const-string v2, "\u8bf7\u6c42\u5934\u7f3a\u5931"

    const-string v3, "ERROR_INVALID_HEADER"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_HEADER:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc855

    const-string v2, "\u8bf7\u6c42\u4e2dstart\u6536\u5230\u4e24\u6b21"

    const-string v3, "ERROR_INVALID_START_MULTI"

    const/4 v5, 0x3

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_START_MULTI:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc856

    const-string v2, "\u8bf7\u6c42\u4e2dstart\u6bd4audio\u665a"

    const-string v3, "ERROR_INVALID_START_LATE"

    const/4 v5, 0x4

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_START_LATE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8b4

    const-string v2, "\u670d\u52a1\u7aef\u672a\u77e5\u9519\u8bef"

    const-string v3, "ERROR_SERVER_UNKNOWN"

    const/4 v5, 0x5

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_SERVER_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8b5

    const-string v2, "\u7b97\u6cd5\u670d\u52a1\u4e0d\u53ef\u7528"

    const-string v3, "ERROR_ALGO_NOT_READY"

    const/4 v5, 0x6

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ALGO_NOT_READY:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8b6

    const-string v2, "\u63a5\u53e3\u8bf7\u6c42\u8d85\u65f6"

    const-string v3, "ERROR_REQ_TIMEOUT"

    const/4 v5, 0x7

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_REQ_TIMEOUT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8b7

    const-string v2, "\u672a\u77e5\u7684\u7b97\u6cd5\u6a21\u578b"

    const-string v3, "ERROR_INVALID_ALGO"

    const/16 v5, 0x8

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_ALGO:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8b8

    const-string v2, "\u8bf7\u6c42\u8f6c\u53d1\u9519\u8bef"

    const-string v3, "ERROR_REQ_POST"

    const/16 v5, 0x9

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_REQ_POST:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const/16 v1, 0xa

    const-string v2, "\u7b97\u6cd5\u670d\u52a1\u5185\u90e8\u9519\u8bef"

    const-string v3, "ERROR_ALGO_INTERNAL"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ALGO_INTERNAL:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8ba

    const-string v2, "\u672a\u77e5\u7684\u4efb\u52a1ID"

    const-string v3, "ERROR_INVALID_TASK"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_INVALID_TASK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8bb

    const-string v2, "\u5904\u7406\u5f02\u6b65\u54cd\u5e94\u65f6\u53d1\u751f\u5f02\u5e38"

    const-string v3, "ERROR_PROCESS_RESP"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS_RESP:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8bc

    const-string v2, "\u8bf7\u6c42\u89e3\u5bc6\u65f6\u53d1\u751f\u5f02\u5e38"

    const-string v3, "ERROR_DECRYPT_REQ"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DECRYPT_REQ:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc8bd

    const-string v2, "\u54cd\u5e94\u52a0\u5bc6\u65f6\u53d1\u751f\u5f02\u5e38"

    const-string v3, "ERROR_ENCRYPT_ACK"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_ENCRYPT_ACK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc918

    const-string v2, "\u5185\u5bb9\u68c0\u6d4b\u672a\u77e5\u9519\u8bef"

    const-string v3, "ERROR_CONTENT_CHECK"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_CONTENT_CHECK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc97e

    const-string v2, "\u5185\u5bb9\u5b8c\u6574\u6821\u9a8c\u5931\u8d25"

    const-string v3, "ERROR_CONTENT_SAFE_CHECK"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_CONTENT_SAFE_CHECK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dc97f

    const-string v2, "\u6570\u636e\u672a\u4e0a\u4f20\u5b8c\u6210"

    const-string v3, "ERROR_DATA_UPLOAD"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DATA_UPLOAD:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x2dedcf

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    const-string v3, "ERROR_UNKNOWN"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_UNKNOWN:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x18704

    const-string v2, "\u54cd\u5e94\u89e3\u5bc6\u65f6\u53d1\u751f\u5f02\u5e38"

    const-string v3, "ERROR_DECRYPT_ACK"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_DECRYPT_ACK:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x18705

    const-string v2, "\u7b49\u5f85FINAL\u8d85\u65f6"

    const-string v3, "ERROR_WAIT_FINAL_TIMEOUT"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_WAIT_FINAL_TIMEOUT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x18706

    const-string v2, "\u8bed\u97f3\u8bc6\u522b\u5904\u7406\u5f02\u5e38"

    const-string v3, "ERROR_PROCESS"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_PROCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x18707

    const-string v2, "\u7f51\u7edc\u672a\u521d\u59cb\u5316"

    const-string v3, "ERROR_NO_INIT"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NO_INIT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x18708

    const-string v2, "\u7f51\u7edc\u8fd4\u56de\u5f02\u5e38"

    const-string v3, "ERROR_NET_FAILURE"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NET_FAILURE:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x18709

    const-string v2, "\u7f51\u7edc\u672a\u8fde\u63a5"

    const-string v3, "ERROR_NET_DISCONNECT"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->ERROR_NET_DISCONNECT:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x18769

    const-string v2, "\u7f51\u7edc\u5df2\u8fde\u63a5"

    const-string v3, "STATUS_NET_CONNECTED"

    const/16 v4, 0x19

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_NET_CONNECTED:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x1876a

    const-string v2, "\u8bc6\u522b\u5230\u7ed3\u679c\u6570\u636e"

    const-string v3, "STATUS_RESULT_DATA"

    const/16 v4, 0x1a

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_RESULT_DATA:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x1876b

    const-string v2, "initAsr\u6210\u529f"

    const-string v3, "STATUS_INIT_SUCCESS"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x1876c

    const-string v2, "initAsr\u5931\u8d25"

    const-string v3, "STATUS_INIT_ERROR"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_INIT_ERROR:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    const v1, 0x1876d

    const-string v2, "\u63a5\u6536\u5230ASR END\u56de\u8c03"

    const-string v3, "STATUS_ASR_COMPLETE_SUCCESS"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->STATUS_ASR_COMPLETE_SUCCESS:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-static {}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->$values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->$VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->$ENTRIES:Lr8/a;

    new-instance v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->Companion:Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->code:I

    iput-object p4, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->statusDesc:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->$VALUES:[Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->code:I

    return p0
.end method

.method public final getStatusDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->statusDesc:Ljava/lang/String;

    return-object p0
.end method

.method public final setStatusDesc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->statusDesc:Ljava/lang/String;

    return-void
.end method

.method public final statusDesc(Ljava/lang/String;)Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oplus/aiunit/realtime_asr/client/RealTimeASRClient$RealTimeASRStatus;->statusDesc:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
