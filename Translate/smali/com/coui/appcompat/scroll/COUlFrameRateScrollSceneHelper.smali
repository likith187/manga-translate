.class public Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANIMATION_TYPE_LIST_SCROLL:I = 0x2776

.field public static final FRAME_RATE_MIN_SUB_SDK:I = 0xa

.field public static final TAG:Ljava/lang/String; = "COUlFrameRateHelper"


# instance fields
.field private mFrameRateIsOpening:Z

.field private mSupportRateVSdk:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->mFrameRateIsOpening:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->enableFrameRate(Z)V

    return-void
.end method


# virtual methods
.method public final enableFrameRate(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 p1, 0x22

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/coui/appcompat/version/COUIVersionUtil;->checkOPlusViewSubSDK(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->getDynamicFrameRateType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_0
    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->mSupportRateVSdk:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->mSupportRateVSdk:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setFrameRate(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->mSupportRateVSdk:Z

    const-string v1, "COUlFrameRateHelper"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->mFrameRateIsOpening:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x2776

    invoke-static {p0, v3, v0, v2}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->setFrameRate(Ljava/lang/Object;IILandroid/os/Bundle;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrameRate isStart:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->mFrameRateIsOpening:Z

    goto :goto_1

    :cond_1
    const-string p0, "SetFrameRate not success, mSupportRateVSdk is false"

    invoke-static {v1, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
