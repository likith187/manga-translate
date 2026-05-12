.class public Lcom/coui/appcompat/vibrateutil/VibrateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final FEATURE_VIBRATOR_LUXUNVIBRATOR_SUPPORT:Ljava/lang/String; = "oplus.software.vibrator_luxunvibrator"

.field public static final MIN_VIBRATOR_TIME:I = 0x19

.field public static final STRENGTH_MAX_EDGE:I = 0x4b0

.field public static final STRENGTH_MAX_GRANULAR:I = 0x640

.field public static final STRENGTH_MAX_STEP:I = 0x7d0

.field public static final STRENGTH_MIN_EDGE:I = 0x320

.field public static final STRENGTH_MIN_GRANULAR:I = 0x4b0

.field public static final STRENGTH_MIN_STEP:I = 0xc8

.field public static final STRENGTH_OFFSET:I = 0x190

.field private static final TAG:Ljava/lang/String; = "VibrateUtils"

.field public static final TYPE_GRANULAR_SHORT_MODERATE:I = 0x1

.field public static final TYPE_GRANULAR_SHORT_WEAK:I = 0x1

.field public static final TYPE_GRANULAR_SHORT_WEAKEST:I = 0x0

.field public static final TYPE_STEPABLE_EDGE:I = 0x9a

.field public static final TYPE_STEPABLE_REGULATE:I = 0x98

.field public static final VIBRATE_CRISP_LEVEL_CRISP:I = 0x0

.field public static final VIBRATE_CRISP_MAX_FREQUENCY:I = 0x5a

.field public static final VIBRATE_CRISP_MAX_INTENSITY:I = 0x64

.field public static final VIBRATE_CRISP_MIN_FREQUENCY:I = 0x4b

.field public static final VIBRATE_CRISP_MIN_INTENSITY:I = 0x32

.field public static final VIBRATE_SOFT_LEVEL_CRISP:I = 0x1

.field public static final VIBRATE_SOFT_MAX_FREQUENCY:I = 0x37

.field public static final VIBRATE_SOFT_MAX_INTENSITY:I = 0x44

.field public static final VIBRATE_SOFT_MIN_FREQUENCY:I = 0x30

.field public static final VIBRATE_SOFT_MIN_INTENSITY:I = 0x34

.field private static lastVibratorTime:J = -0x1L

.field private static final mHapticObserver:Landroid/database/ContentObserver;

.field private static sContext:Landroid/content/Context; = null

.field private static sHapticEnable:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/vibrateutil/VibrateUtils$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->mHapticObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sHapticEnable:Z

    return p0
.end method

.method private static filterVibrator()Z
    .locals 6

    sget-wide v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->lastVibratorTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->lastVibratorTime:J

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->lastVibratorTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x19

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->lastVibratorTime:J

    return v1
.end method

.method private static getDynamicEffect(II)Lb/a;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n    \"Metadata\": {\n        \"Version\": 2,\n        \"Created\": \"2023-05-12\",\n        \"Description\": \"Exported from RichTap Creator Pro\"\n    },\n    \"PatternList\": [\n        {\n            \"AbsoluteTime\": 0,\n            \"Pattern\": [\n                {\n                    \"Event\": {\n                        \"Type\": \"transient\",\n                        \"RelativeTime\": 0,\n                        \"Parameters\": {\n                            \"Intensity\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\n                            \"Frequency\": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n                        },\n                        \"Index\": 0\n                    }\n                }\n            ]\n        }\n    ]\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a;->a(Ljava/lang/String;)Lb/a;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLinearMotorVibrator(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v2, "oplus.software.vibrator_luxunvibrator"

    invoke-virtual {v1, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "linearmotor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/os/LinearmotorVibrator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get linear motor vibrator failed. error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VibrateUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getVibratorStrengthWithLimit(IIII)I
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    sub-int p0, p3, p2

    int-to-double p0, p0

    mul-double/2addr v0, p0

    int-to-double p0, p2

    add-double/2addr v0, p0

    double-to-int p0, v0

    if-ge p2, p3, :cond_0

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getVibratorValueWithLimit(IIII)I
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    sub-int p0, p3, p2

    int-to-double p0, p0

    mul-double/2addr v0, p0

    int-to-double p0, p2

    add-double/2addr v0, p0

    double-to-int p0, v0

    if-ge p2, p3, :cond_0

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static isLinearMotorVersion(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object p0

    const-string v0, "oplus.software.vibrator_lmvibrator"

    invoke-virtual {p0, v0}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get isLinearMotorVersion failed. error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibrateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static registerHapticObserver(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sContext:Landroid/content/Context;

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    sput-boolean v3, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sHapticEnable:Z

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->mHapticObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setLinearMotorVibratorStrength(Lcom/oplus/os/LinearmotorVibrator;IIIII)V
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    sget-boolean v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sHapticEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getVibratorStrengthWithLimit(IIII)I

    move-result p2

    if-nez p1, :cond_1

    add-int/lit16 p2, p2, 0x190

    .line 3
    :cond_1
    new-instance p3, Lcom/oplus/os/WaveformEffect$Builder;

    invoke-direct {p3}, Lcom/oplus/os/WaveformEffect$Builder;-><init>()V

    const/4 p4, 0x0

    .line 4
    invoke-virtual {p3, p4}, Lcom/oplus/os/WaveformEffect$Builder;->setStrengthSettingEnabled(Z)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p2}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectStrength(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/oplus/os/WaveformEffect$Builder;->setAsynchronous(Z)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/oplus/os/WaveformEffect$Builder;->build()Lcom/oplus/os/WaveformEffect;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/oplus/os/LinearmotorVibrator;->vibrate(Lcom/oplus/os/WaveformEffect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setLinearMotorVibratorStrength(Lcom/oplus/os/LinearmotorVibrator;IIIIIIF)V
    .locals 3

    if-eqz p0, :cond_6

    .line 10
    sget-boolean v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sHapticEnable:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 11
    :cond_0
    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->filterVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p6, :cond_2

    const/16 v0, 0x4b

    goto :goto_0

    :cond_2
    const/16 v0, 0x30

    :goto_0
    if-nez p6, :cond_3

    const/16 v1, 0x5a

    goto :goto_1

    :cond_3
    const/16 v1, 0x37

    :goto_1
    if-nez p6, :cond_4

    const/16 v2, 0x32

    goto :goto_2

    :cond_4
    const/16 v2, 0x34

    :goto_2
    if-nez p6, :cond_5

    const/16 p6, 0x64

    goto :goto_3

    :cond_5
    const/16 p6, 0x44

    .line 12
    :goto_3
    invoke-static {p2, p3, v0, v1}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getVibratorValueWithLimit(IIII)I

    move-result v0

    .line 13
    invoke-static {p2, p3, v2, p6}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getVibratorValueWithLimit(IIII)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p7

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    .line 14
    :try_start_0
    invoke-static {v0, p6}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getDynamicEffect(II)Lb/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p6

    .line 15
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get haptic player failed. error = "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string p7, "VibrateUtils"

    invoke-static {p7, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_4
    invoke-static/range {p0 .. p5}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->setLinearMotorVibratorStrength(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    :cond_6
    :goto_5
    return-void
.end method

.method public static unRegisterHapticObserver()V
    .locals 2

    sget-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->mHapticObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->sContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
