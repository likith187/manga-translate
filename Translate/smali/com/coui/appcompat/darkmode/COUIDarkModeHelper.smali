.class public Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$Holder;,
        Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$COUIDarkColorObserver;,
        Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;
    }
.end annotation


# static fields
.field private static final KEY_BACKGROUNDMAXL:Ljava/lang/String; = "DarkMode_BackgroundMaxL"

.field private static final KEY_DIALOGBGMAXL:Ljava/lang/String; = "DarkMode_DialogBgMaxL"

.field private static final KEY_FOREGROUNDMINL:Ljava/lang/String; = "DarkMode_ForegroundMinL"


# instance fields
.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemDarkModeBackgroundMaxL:F

.field private mSystemDarkModeDialogBgMaxL:F

.field private mSystemDarkModeForegroundMinL:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeDialogBgMaxL:F

    iput v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeBackgroundMaxL:F

    iput v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeForegroundMinL:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    return-void
.end method

.method private COUIDarkModeHelper()V
    .locals 0

    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeDialogBgMaxL:F

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->notifyDialogBackgroundObserver()V

    return-void
.end method

.method static synthetic access$202(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeBackgroundMaxL:F

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->notifyBackgroundObserver()V

    return-void
.end method

.method static synthetic access$402(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeForegroundMinL:F

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->notifyForegroundObserver()V

    return-void
.end method

.method public static getInstance()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$Holder;->INSTANCE:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    return-object v0
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_DialogBgMaxL"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeDialogBgMaxL:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "DarkMode_BackgroundMaxL"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeBackgroundMaxL:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "DarkMode_ForegroundMinL"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeForegroundMinL:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$1;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5, p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$1;-><init>(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;

    invoke-direct {v2, p0, v5, p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;-><init>(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;

    invoke-direct {v2, p0, v5, p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;-><init>(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyBackgroundObserver()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;

    invoke-interface {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;->onBackgroundChange()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private notifyDialogBackgroundObserver()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;

    invoke-interface {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;->onDialogBackgroundChange()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private notifyForegroundObserver()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;

    invoke-interface {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;->onForegroundChange()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$COUIDarkColorObserver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public attach(Landroid/app/Application;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->initObserver(Landroid/content/Context;)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->makeDark(I)I

    move-result p0

    return p0
.end method

.method public getDialogBackgroundColor()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->makeDialogDark(I)I

    move-result p0

    return p0
.end method

.method public getForegroundColor()I
    .locals 1

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->makeLight(I)I

    move-result p0

    return p0
.end method

.method public makeDark(I)I
    .locals 12

    iget p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeBackgroundMaxL:F

    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p1, v0}, Lu/d;->l(I[D)V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double/2addr v4, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p0, v2

    if-eqz v2, :cond_0

    float-to-double v2, p0

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    div-double/2addr v4, v6

    const/high16 v6, 0x42480000    # 50.0f

    sub-float/2addr v6, p0

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    :cond_0
    move-wide v6, v4

    aput-wide v6, v0, v1

    const/4 p0, 0x1

    aget-wide v8, v0, p0

    const/4 p0, 0x2

    aget-wide v10, v0, p0

    invoke-static/range {v6 .. v11}, Lu/d;->b(DDD)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public makeDialogDark(I)I
    .locals 12

    iget p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeDialogBgMaxL:F

    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p1, v0}, Lu/d;->l(I[D)V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double/2addr v4, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p0, v2

    if-eqz v2, :cond_0

    float-to-double v2, p0

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    div-double/2addr v4, v6

    const/high16 v6, 0x42480000    # 50.0f

    sub-float/2addr v6, p0

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    :cond_0
    move-wide v6, v4

    aput-wide v6, v0, v1

    const/4 p0, 0x1

    aget-wide v8, v0, p0

    const/4 p0, 0x2

    aget-wide v10, v0, p0

    invoke-static/range {v6 .. v11}, Lu/d;->b(DDD)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public makeLight(I)I
    .locals 12

    iget p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mSystemDarkModeForegroundMinL:F

    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p1, v0}, Lu/d;->l(I[D)V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double/2addr v4, v2

    cmpl-double v2, v4, v2

    if-lez v2, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p0, v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    sub-double/2addr v4, v2

    div-double/2addr v4, v2

    const/high16 v6, 0x42480000    # 50.0f

    sub-float/2addr p0, v6

    float-to-double v6, p0

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    :cond_0
    move-wide v6, v4

    aput-wide v6, v0, v1

    const/4 p0, 0x1

    aget-wide v8, v0, p0

    const/4 p0, 0x2

    aget-wide v10, v0, p0

    invoke-static/range {v6 .. v11}, Lu/d;->b(DDD)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public removeObserver(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$COUIDarkColorObserver;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
