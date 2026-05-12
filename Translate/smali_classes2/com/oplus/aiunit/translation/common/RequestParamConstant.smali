.class public final Lcom/oplus/aiunit/translation/common/RequestParamConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALLBACK_METHOD_ONDATA:Ljava/lang/String; = "callback_method_ondataavailable"

.field public static final CALLBACK_METHOD_ONERROR:Ljava/lang/String; = "callback_method_onerror"

.field public static final CALLBACK_METHOD_ONFINISH:Ljava/lang/String; = "callback_method_onfinish"

.field public static final CALLBACK_METHOD_ONSTART:Ljava/lang/String; = "callback_method_onstart"

.field public static final CALLBACK_METHOD_ONSTOP:Ljava/lang/String; = "callback_method_onstop"

.field public static final CALLBACK_METHOD_ONSUCCESS:Ljava/lang/String; = "callback_method_onsuccess"

.field public static final CALLBACK_METHOD_ON_AUDIO:Ljava/lang/String; = "CALLBACK_METHOD_ON_AUDIO"

.field public static final CALLBACK_METHOD_ON_RESPONSE:Ljava/lang/String; = "CALLBACK_METHOD_ON_RESPONSE"

.field public static final CALLBACK_METHOD_ON_TTS_END:Ljava/lang/String; = "CALLBACK_METHOD_ON_TTS_END"

.field public static final CALLBACK_METHOD_ON_TTS_INIT_STATUS:Ljava/lang/String; = "CALLBACK_METHOD_ON_TTS_INIT_STATUS"

.field public static final CALLBACK_METHOD_ON_TTS_START:Ljava/lang/String; = "CALLBACK_METHOD_ON_TTS_START"

.field public static final DETECTOR_NAME_KEY:Ljava/lang/String; = "ai_omni"

.field public static final INSTANCE:Lcom/oplus/aiunit/translation/common/RequestParamConstant;

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "key_sdk_version"

.field public static final KEY_SDK_VERSION_CODE:Ljava/lang/String; = "key_sdk_version_code"

.field public static final KEY_TRANSLATION_CALLBACK_TYPE:Ljava/lang/String; = "custom::translation_callback_type"

.field public static final KEY_TRANSLATION_METHOD:Ljava/lang/String; = "custom::translation_method"

.field public static final PACKAGE_JSON_SOURCE_KEY:Ljava/lang/String; = "package::json_source"

.field public static final PARAM_CLIENT_LABEL:Ljava/lang/String; = "param_client_label"

.field public static final PROCESS_RESULT_CODE_FAILED:I = -0x1

.field public static final PROCESS_RESULT_CODE_SUCCESS:I = 0x0

.field private static final PROCESS_RESULT_MSG_LOSS_MESSENGER:Ljava/lang/String; = "process input lost IAIMessenger"

.field private static final PROCESS_RESULT_MSG_LOSS_REGION:Ljava/lang/String; = "process input lost region"

.field private static final PROCESS_RESULT_MSG_PARAM_INVALID:Ljava/lang/String; = "process param invalid"

.field private static final PROCESS_RESULT_MSG_SDK_INTERNAL_ERROR:Ljava/lang/String; = "process internal error"

.field private static final PROCESS_RESULT_MSG_SUCCESS:Ljava/lang/String; = "process success"

.field public static final SCENE_NAME_KEY:Ljava/lang/String; = "ai_omni"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/translation/common/RequestParamConstant;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/common/RequestParamConstant;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/translation/common/RequestParamConstant;->INSTANCE:Lcom/oplus/aiunit/translation/common/RequestParamConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
