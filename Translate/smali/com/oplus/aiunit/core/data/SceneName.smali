.class public final Lcom/oplus/aiunit/core/data/SceneName;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AI_DOC_SCAN:Ljava/lang/String; = "doc_scan"

.field public static final AI_INFO_COLLECT:Ljava/lang/String; = "info_collect"

.field public static final AI_INTERACT_SEGMENT:Ljava/lang/String; = "ai_interact_segment"

.field public static final AI_OCR:Ljava/lang/String; = "ocr"

.field public static final AI_PICTURE_CLEAR:Ljava/lang/String; = "picture_clear"

.field public static final AI_PRIVACY_MOSAIC:Ljava/lang/String; = "privacy_mosaic"

.field public static final AI_SCAN:Ljava/lang/String; = "ai_scan"

.field public static final AUTO_FILL:Ljava/lang/String; = "auto_fill"

.field public static final CAMERA_CROP:Ljava/lang/String; = "camera_crop"

.field public static final CLOUD_AI_CALL_SUMMARY:Ljava/lang/String; = "cloud_call_summary"

.field public static final CLOUD_AI_REMOVE:Ljava/lang/String; = "cloud_ai_remove"

.field public static final CLOUD_PICTURE_AI_COMPOSITION:Ljava/lang/String; = "cloud_picture_ai_composition"

.field public static final CLOUD_PICTURE_AUTO_CORRECTION:Ljava/lang/String; = "cloud_picture_auto_correction"

.field public static final CLOUD_PICTURE_DEBLUR:Ljava/lang/String; = "cloud_picture_deblur"

.field public static final CLOUD_PICTURE_DEFECT_RECOGNITION:Ljava/lang/String; = "cloud_picture_defect_recognition"

.field public static final CLOUD_PICTURE_DEREFLECTION:Ljava/lang/String; = "cloud_picture_dereflection"

.field public static final CLOUD_PICTURE_QUALITY_ENHANCEMENT:Ljava/lang/String; = "cloud_picture_quality_enhancement"

.field public static final INSTANCE:Lcom/oplus/aiunit/core/data/SceneName;

.field public static final LOCAL_AI_CALL_SUMMARY:Ljava/lang/String; = "local_call_summary"

.field public static final LOCAL_AI_CALL_SUMMARY_OAP:Ljava/lang/String; = "local_call_summary_oap"

.field public static final LOCAL_AI_REMOVE:Ljava/lang/String; = "local_ai_remove"

.field public static final LOCAL_PICTURE_AUTO_CORRECTION:Ljava/lang/String; = "local_picture_auto_correction"

.field public static final SCENE_AI_SETTINGS:Ljava/lang/String; = "ai_settings"

.field public static final SCENE_DEFAULT:Ljava/lang/String; = "all_scene"

.field public static final SCENE_ENGINE_FRAMEWORK:Ljava/lang/String; = "engine_framework"

.field public static final TEXT_INTENT:Ljava/lang/String; = "text_intent"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/data/SceneName;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/data/SceneName;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/data/SceneName;->INSTANCE:Lcom/oplus/aiunit/core/data/SceneName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAllScene(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "sceneName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "all_scene"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ai_settings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
