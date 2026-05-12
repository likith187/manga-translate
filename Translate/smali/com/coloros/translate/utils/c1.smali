.class public final Lcom/coloros/translate/utils/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/c1;

.field private static a:F

.field private static b:F

.field private static c:Z

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/c1;

    invoke-direct {v0}, Lcom/coloros/translate/utils/c1;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/c1;->INSTANCE:Lcom/coloros/translate/utils/c1;

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sput v0, Lcom/coloros/translate/utils/c1;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/MotionEvent;)Z
    .locals 3

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/utils/c1;->b(Landroid/view/MotionEvent;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/translate/utils/c1;->c:Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    sput p0, Lcom/coloros/translate/utils/c1;->a:F

    sput p0, Lcom/coloros/translate/utils/c1;->b:F

    sget-boolean p0, Lcom/coloros/translate/utils/c1;->c:Z

    if-nez p0, :cond_2

    return v2

    :cond_2
    sput-boolean v1, Lcom/coloros/translate/utils/c1;->c:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sput v0, Lcom/coloros/translate/utils/c1;->a:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/coloros/translate/utils/c1;->b:F

    sput-boolean v1, Lcom/coloros/translate/utils/c1;->c:Z

    :cond_4
    :goto_0
    sget-boolean p0, Lcom/coloros/translate/utils/c1;->c:Z

    return p0
.end method

.method private static final b(Landroid/view/MotionEvent;)Z
    .locals 2

    sget v0, Lcom/coloros/translate/utils/c1;->a:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/coloros/translate/utils/c1;->d:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    sget v0, Lcom/coloros/translate/utils/c1;->b:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sget v0, Lcom/coloros/translate/utils/c1;->d:I

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

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
