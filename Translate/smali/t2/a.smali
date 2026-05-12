.class public Lt2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static j:Lt2/a;

.field private static k:Ljava/util/HashMap;


# instance fields
.field private a:I

.field private b:Landroidx/lifecycle/a0;

.field private c:Landroidx/lifecycle/a0;

.field private d:Landroidx/lifecycle/a0;

.field private e:Landroidx/lifecycle/a0;

.field private f:Landroidx/lifecycle/a0;

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Lt2/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lt2/a;->k:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt2/a;->a:I

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    iput-object v0, p0, Lt2/a;->b:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    iput-object v0, p0, Lt2/a;->c:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    iput-object v0, p0, Lt2/a;->d:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    iput-object v0, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    iput-object v0, p0, Lt2/a;->f:Landroidx/lifecycle/a0;

    sget-object v0, Lt2/b$b;->SMALL:Lt2/b$b;

    iput-object v0, p0, Lt2/a;->i:Lt2/b$b;

    invoke-direct {p0, p1}, Lt2/a;->m(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)I
    .locals 4

    iget-object v0, p0, Lt2/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/responsiveui/R$integer;->inner_responsive_ui_column_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lt2/a;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/responsiveui/R$integer;->inner_responsive_ui_column_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object p0, p0, Lt2/a;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/support/responsiveui/R$integer;->inner_responsive_ui_column_12:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    div-int/lit8 v2, v0, 0x2

    sub-int v3, v1, v2

    if-ge p1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int v0, p0, v2

    if-ge p1, v0, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, p0

    :goto_1
    return v0
.end method

.method private b(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/support/responsiveui/R$integer;->inner_responsive_ui_column_4:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lt2/a;->g:I

    return-void
.end method

.method private c(Landroid/content/res/Resources;)V
    .locals 4

    iget-object v0, p0, Lt2/a;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget v1, Lcom/support/responsiveui/R$integer;->responsive_ui_column_count:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iget-object v1, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/c;

    invoke-virtual {v1}, Lt2/c;->c()I

    move-result v1

    invoke-direct {p0}, Lt2/a;->e()I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lt2/a;->a(I)I

    move-result p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_2

    :cond_1
    iget-object p0, p0, Lt2/a;->f:Landroidx/lifecycle/a0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private d(ILt2/c;)Lt2/b$a;
    .locals 4

    sget-object v0, Lt2/b$a;->UNKNOWN:Lt2/b$a;

    invoke-virtual {p2}, Lt2/c;->c()I

    move-result v1

    invoke-virtual {p2}, Lt2/c;->a()I

    move-result p2

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    sget-object v3, Lt2/b$b;->SMALL:Lt2/b$b;

    iput-object v3, p0, Lt2/a;->i:Lt2/b$b;

    goto :goto_0

    :cond_0
    const/16 v3, 0x348

    if-ge v1, v3, :cond_1

    sget-object v3, Lt2/b$b;->MEDIUM:Lt2/b$b;

    iput-object v3, p0, Lt2/a;->i:Lt2/b$b;

    goto :goto_0

    :cond_1
    sget-object v3, Lt2/b$b;->LARGE:Lt2/b$b;

    iput-object v3, p0, Lt2/a;->i:Lt2/b$b;

    :goto_0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const-string p0, "ResponsiveUIConfig"

    const-string p1, "undefined orientation Status unknown !!! "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/16 p0, 0x1f4

    if-lt p2, p0, :cond_3

    sget-object v0, Lt2/b$a;->UNFOLD:Lt2/b$a;

    goto :goto_1

    :cond_3
    sget-object v0, Lt2/b$a;->FOLD:Lt2/b$a;

    goto :goto_1

    :cond_4
    if-lt v1, v2, :cond_5

    sget-object v0, Lt2/b$a;->UNFOLD:Lt2/b$a;

    goto :goto_1

    :cond_5
    sget-object v0, Lt2/b$a;->FOLD:Lt2/b$a;

    :goto_1
    return-object v0
.end method

.method private e()I
    .locals 0

    iget-object p0, p0, Lt2/a;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    return p0
.end method

.method public static f(Landroid/content/Context;)Lt2/a;
    .locals 3

    sget-object v0, Lt2/a;->j:Lt2/a;

    if-nez v0, :cond_0

    new-instance v0, Lt2/a;

    invoke-direct {v0, p0}, Lt2/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lt2/a;->j:Lt2/a;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lt2/a;->j:Lt2/a;

    iget v1, v1, Lt2/a;->a:I

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefault context hash change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lt2/a;->j:Lt2/a;

    iget v2, v2, Lt2/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResponsiveUIConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lt2/a;->j:Lt2/a;

    invoke-direct {v0, p0}, Lt2/a;->m(Landroid/content/Context;)V

    :cond_1
    sget-object p0, Lt2/a;->j:Lt2/a;

    return-object p0
.end method

.method private m(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lt2/a;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lt2/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lt2/a;->b(Landroid/content/res/Resources;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lt2/a;->o(Landroid/content/res/Configuration;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lt2/a;->c(Landroid/content/res/Resources;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init uiConfig "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt2/a;->b:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", columns count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt2/a;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponsiveUIConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init addContent ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt2/a;->j()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt2/a;->h()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt2/a;->i()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt2/a;->g()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private o(Landroid/content/res/Configuration;)Z
    .locals 6

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    new-instance v1, Lt2/c;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, v2, v3, p1}, Lt2/c;-><init>(III)V

    invoke-direct {p0, v0, v1}, Lt2/a;->d(ILt2/c;)Lt2/b$a;

    move-result-object p1

    new-instance v2, Lt2/b;

    iget-object v3, p0, Lt2/a;->i:Lt2/b$b;

    invoke-direct {v2, p1, v1, v0, v3}, Lt2/b;-><init>(Lt2/b$a;Lt2/c;ILt2/b$b;)V

    iget-object p1, p0, Lt2/a;->b:Landroidx/lifecycle/a0;

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt2/b;

    invoke-virtual {v2, p1}, Lt2/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lt2/b;->c()Lt2/b$a;

    move-result-object v0

    invoke-virtual {p1}, Lt2/b;->c()Lt2/b$a;

    move-result-object v3

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lt2/a;->c:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Lt2/b;->c()Lt2/b$a;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lt2/b;->a()I

    move-result v3

    invoke-virtual {p1}, Lt2/b;->a()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    iget-object v1, p0, Lt2/a;->d:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Lt2/b;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    move v1, v0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lt2/b;->b()Lt2/c;

    move-result-object v3

    invoke-virtual {p1}, Lt2/b;->b()Lt2/c;

    move-result-object p1

    invoke-virtual {v3, p1}, Lt2/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_4
    invoke-virtual {v2}, Lt2/b;->b()Lt2/c;

    move-result-object p1

    invoke-virtual {p1}, Lt2/c;->c()I

    move-result p1

    invoke-direct {p0}, Lt2/a;->e()I

    move-result v3

    sub-int v4, p1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_5

    iget-object p1, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Lt2/b;->b()Lt2/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update ScreenSize few case newWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " appWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResponsiveUIConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt2/c;

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Lt2/c;->a()I

    move-result p1

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lt2/c;->c()I

    move-result p1

    :cond_7
    :goto_0
    invoke-virtual {v2}, Lt2/b;->b()Lt2/c;

    move-result-object v1

    invoke-virtual {v1}, Lt2/c;->a()I

    move-result v1

    new-instance v3, Lt2/c;

    invoke-virtual {v2}, Lt2/b;->b()Lt2/c;

    move-result-object v4

    invoke-virtual {v4}, Lt2/c;->b()I

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Lt2/c;-><init>(III)V

    iget-object p1, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lt2/a;->d:Landroidx/lifecycle/a0;

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lt2/a;->d(ILt2/c;)Lt2/b$a;

    move-result-object p1

    invoke-virtual {v2, p1}, Lt2/b;->f(Lt2/b$a;)V

    iget-object p1, p0, Lt2/a;->i:Lt2/b$b;

    invoke-virtual {v2, p1}, Lt2/b;->g(Lt2/b$b;)V

    :goto_1
    iget-object p1, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt2/c;

    invoke-virtual {v2, p1}, Lt2/b;->e(Lt2/c;)V

    :cond_8
    iget-object p0, p0, Lt2/a;->b:Landroidx/lifecycle/a0;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return v0

    :cond_9
    return v1
.end method


# virtual methods
.method public g()I
    .locals 1

    iget-object v0, p0, Lt2/a;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lt2/a;->i()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/c;

    invoke-virtual {v0}, Lt2/c;->c()I

    move-result v0

    invoke-virtual {p0}, Lt2/a;->j()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public i()I
    .locals 2

    invoke-virtual {p0}, Lt2/a;->j()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/c;

    invoke-virtual {v1}, Lt2/c;->c()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lt2/a;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-direct {p0, v0}, Lt2/a;->a(I)I

    move-result p0

    return p0
.end method

.method public j()I
    .locals 2

    iget-object v0, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/c;

    invoke-virtual {v0}, Lt2/c;->c()I

    move-result v0

    const/16 v1, 0x348

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lt2/a;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/responsiveui/R$integer;->inner_responsive_ui_extend_hierarchy_parent_width_360:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/c;

    invoke-virtual {v0}, Lt2/c;->c()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lt2/a;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/responsiveui/R$integer;->inner_responsive_ui_extend_hierarchy_parent_width_300:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lt2/a;->e:Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt2/c;

    invoke-virtual {p0}, Lt2/c;->c()I

    move-result p0

    return p0
.end method

.method public k()Lt2/b$b;
    .locals 0

    iget-object p0, p0, Lt2/a;->b:Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt2/b;

    invoke-virtual {p0}, Lt2/b;->d()Lt2/b$b;

    move-result-object p0

    return-object p0
.end method

.method public l()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lt2/a;->c:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public n(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-direct {p0, p1}, Lt2/a;->o(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lt2/a;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lt2/a;->c(Landroid/content/res/Resources;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUIConfigChanged uiConfig "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt2/a;->b:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", columns count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt2/a;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponsiveUIConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUIConfigChanged addContent ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt2/a;->j()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt2/a;->h()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt2/a;->i()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt2/a;->g()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
