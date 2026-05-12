.class public abstract Lg4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/animation/TimeInterpolator;

.field protected final b:Landroid/view/View;

.field protected final c:I

.field protected final d:I

.field protected final e:I

.field private f:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandardDecelerateInterpolator:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v2}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lg4/i;->g(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lg4/a;->a:Landroid/animation/TimeInterpolator;

    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    const/16 v1, 0x12c

    invoke-static {p1, v0, v1}, Lg4/i;->f(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lg4/a;->c:I

    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lg4/i;->f(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lg4/a;->d:I

    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort2:I

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lg4/i;->f(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lg4/a;->e:I

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 0

    iget-object p0, p0, Lg4/a;->a:Landroid/animation/TimeInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method protected b()Landroidx/activity/b;
    .locals 2

    iget-object v0, p0, Lg4/a;->f:Landroidx/activity/b;

    if-nez v0, :cond_0

    const-string v0, "MaterialBackHelper"

    const-string v1, "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lg4/a;->f:Landroidx/activity/b;

    const/4 v1, 0x0

    iput-object v1, p0, Lg4/a;->f:Landroidx/activity/b;

    return-object v0
.end method

.method public c()Landroidx/activity/b;
    .locals 2

    iget-object v0, p0, Lg4/a;->f:Landroidx/activity/b;

    const/4 v1, 0x0

    iput-object v1, p0, Lg4/a;->f:Landroidx/activity/b;

    return-object v0
.end method

.method protected d(Landroidx/activity/b;)V
    .locals 0

    iput-object p1, p0, Lg4/a;->f:Landroidx/activity/b;

    return-void
.end method

.method protected e(Landroidx/activity/b;)Landroidx/activity/b;
    .locals 2

    iget-object v0, p0, Lg4/a;->f:Landroidx/activity/b;

    if-nez v0, :cond_0

    const-string v0, "MaterialBackHelper"

    const-string v1, "Must call startBackProgress() before updateBackProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lg4/a;->f:Landroidx/activity/b;

    iput-object p1, p0, Lg4/a;->f:Landroidx/activity/b;

    return-object v0
.end method
