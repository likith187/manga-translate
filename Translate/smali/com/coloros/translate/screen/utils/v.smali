.class public final Lcom/coloros/translate/screen/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/v;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/v;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/v;->INSTANCE:Lcom/coloros/translate/screen/utils/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/widget/k;->c:Lcom/coloros/translate/widget/k$b;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/k$b;->a()Lcom/coloros/translate/widget/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/translate/widget/k;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p3, p2, p0, p1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "zh"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u3002"

    goto :goto_0

    :cond_0
    const-string p0, ". "

    :goto_0
    return-object p0
.end method

.method public static final c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/os/OplusBuild;->getOplusOSVERSION()I

    move-result p0

    const/16 v0, 0x22

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
