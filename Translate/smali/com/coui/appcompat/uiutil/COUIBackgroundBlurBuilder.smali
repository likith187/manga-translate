.class public Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final SYSTEM_MATERIAL_BLUR_ENABLE:Ljava/lang/String; = "system_material_blur_enable"

.field private static final TAG:Ljava/lang/String; = "BackgroundBlurBuilder"


# instance fields
.field private mBlendColorDark:[F

.field private mBlendColorLight:[F

.field private mBlurRadius:I

.field private mContext:Landroid/content/Context;

.field private mCornerRadiusBottomLeft:F

.field private mCornerRadiusBottomRight:F

.field private mCornerRadiusTopLeft:F

.field private mCornerRadiusTopRight:F

.field private mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMixColorDark:[F

.field private mMixColorLight:[F

.field private mRootView:Landroid/view/View;

.field private mSmoothWeight:F

.field private mTargetView:Landroid/view/View;

.field private mUseBackgroundBlur:Z

.field private mViewRootManager:Lcom/oplus/view/ViewRootManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlendColorLight:[F

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlendColorDark:[F

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mMixColorLight:[F

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mMixColorDark:[F

    iput-object p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->lambda$applyBlurBackground$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private createBlurParams()Lcom/oplus/graphics/OplusBlurParam;
    .locals 4

    new-instance v0, Lcom/oplus/graphics/OplusBlurParam;

    invoke-direct {v0}, Lcom/oplus/graphics/OplusBlurParam;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/graphics/OplusBlurParam;->setBlurType(I)V

    iget-object v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    :goto_2
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlendColorDark:[F

    iget-object v3, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mMixColorDark:[F

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlendColorLight:[F

    iget-object v3, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mMixColorLight:[F

    :goto_3
    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/graphics/OplusBlurParam;->setMaterialParams(I[F[F)V

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isSupportRoundCornerWhenBlur()Z

    move-result v1

    if-eqz v1, :cond_4

    iget p0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mSmoothWeight:F

    invoke-virtual {v0, p0}, Lcom/oplus/graphics/OplusBlurParam;->setSmoothCornerWeight(F)V

    const-string p0, "BackgroundBlurBuilder"

    const-string v1, "Current version supports roundCorner when using blur"

    invoke-static {p0, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_list_dialog_background_blur_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlurRadius:I

    return-void
.end method

.method private synthetic lambda$applyBlurBackground$0(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$color;->coui_list_dialog_background_color_above_blur:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/support/appcompat/R$color;->coui_list_dialog_background_color_no_blur:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mViewRootManager:Lcom/oplus/view/ViewRootManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/oplus/view/ViewRootManager;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WindowBlurEnabled = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackgroundBlurBuilder"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyBlurBackground()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->useBackgroundBlur()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oplus/view/ViewRootManager;

    iget-object v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/oplus/view/ViewRootManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mViewRootManager:Lcom/oplus/view/ViewRootManager;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oplus/view/ViewRootManager;

    iget-object v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mTargetView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/oplus/view/ViewRootManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mViewRootManager:Lcom/oplus/view/ViewRootManager;

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mViewRootManager:Lcom/oplus/view/ViewRootManager;

    invoke-virtual {v0}, Lcom/oplus/view/ViewRootManager;->getBackgroundBlurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-nez v1, :cond_1

    new-instance v1, Lcom/coui/appcompat/uiutil/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/uiutil/a;-><init>(Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;)V

    iput-object v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->createBlurParams()Lcom/oplus/graphics/OplusBlurParam;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mViewRootManager:Lcom/oplus/view/ViewRootManager;

    invoke-virtual {v2, v1}, Lcom/oplus/view/ViewRootManager;->setBlurParams(Lcom/oplus/graphics/OplusBlurParam;)V

    iget-object v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mViewRootManager:Lcom/oplus/view/ViewRootManager;

    iget v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlurRadius:I

    invoke-virtual {v1, v2}, Lcom/oplus/view/ViewRootManager;->setBlurRadius(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->refreshCornerRadius()V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must setTargetView before applyBlurBackground"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public isMaterialBlurEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "system_material_blur_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public refreshCornerRadius()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mViewRootManager:Lcom/oplus/view/ViewRootManager;

    iget v1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusTopLeft:F

    iget v2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusTopRight:F

    iget v3, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusBottomLeft:F

    iget p0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusBottomRight:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/oplus/view/ViewRootManager;->setCornerRadius(FFFF)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mUseBackgroundBlur:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v0}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public setBlendColorDark([F)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlendColorDark:[F

    return-void
.end method

.method public setBlendColorLight([F)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlendColorLight:[F

    return-void
.end method

.method public setBlurRadius(I)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mBlurRadius:I

    return-object p0
.end method

.method public setCornerRadius(F)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusTopLeft:F

    .line 2
    iput p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusTopRight:F

    .line 3
    iput p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusBottomLeft:F

    .line 4
    iput p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusBottomRight:F

    return-object p0
.end method

.method public setCornerRadius(FFFF)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 0

    .line 5
    iput p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusTopLeft:F

    .line 6
    iput p2, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusTopRight:F

    .line 7
    iput p3, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusBottomLeft:F

    .line 8
    iput p4, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mCornerRadiusBottomRight:F

    return-object p0
.end method

.method public setMixColorDark([F)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mMixColorDark:[F

    return-void
.end method

.method public setMixColorLight([F)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mMixColorLight:[F

    return-void
.end method

.method public setRootView(Landroid/view/View;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public setSmoothWeight(F)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mSmoothWeight:F

    return-object p0
.end method

.method public setTargetView(Landroid/view/View;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mTargetView:Landroid/view/View;

    return-object p0
.end method

.method public setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$bool;->coui_blur_enable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;Z)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;Z)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 1

    .line 3
    invoke-static {}, Lcom/coui/appcompat/uiutil/ShadowUtils;->checkOPlusViewElevationSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/coui/appcompat/uiutil/UIUtil;->confirmLevelAnim(Lcom/coui/appcompat/uiutil/AnimLevel;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mUseBackgroundBlur:Z

    goto :goto_0

    .line 5
    :cond_0
    const-string p1, "BackgroundBlurBuilder"

    const-string p2, "Machines below V do not support setting blurred backgrounds or current animLevel is too low or is in third party theme"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mUseBackgroundBlur:Z

    :goto_0
    return-object p0
.end method

.method public useBackgroundBlur()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->mUseBackgroundBlur:Z

    return p0
.end method
