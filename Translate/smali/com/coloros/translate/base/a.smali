.class public final Lcom/coloros/translate/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/base/b;


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/base/a;

.field private static a:Lcom/coloros/translate/base/b;

.field private static b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/base/a;

    invoke-direct {v0}, Lcom/coloros/translate/base/a;-><init>()V

    sput-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;ILe2/b;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/base/a;->a:Lcom/coloros/translate/base/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/coloros/translate/base/b;->a(Landroid/app/Activity;ILe2/b;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    sget-object p0, Lcom/coloros/translate/base/a;->a:Lcom/coloros/translate/base/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/base/b;->b()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()Z
    .locals 0

    sget-object p0, Lcom/coloros/translate/base/a;->a:Lcom/coloros/translate/base/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/base/b;->c()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d(Landroid/app/Activity;Le2/a;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "functionInstructionCallback"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/base/a;->a:Lcom/coloros/translate/base/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/coloros/translate/base/b;->d(Landroid/app/Activity;Le2/a;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/base/a;->a:Lcom/coloros/translate/base/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/coloros/translate/base/b;->e(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Landroid/content/Context;
    .locals 0

    sget-object p0, Lcom/coloros/translate/base/a;->b:Landroid/app/Application;

    if-nez p0, :cond_0

    const-string p0, "mApplication"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final g(Landroid/app/Application;Lcom/coloros/translate/base/b;)V
    .locals 0

    const-string p0, "application"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "provider"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/coloros/translate/base/a;->b:Landroid/app/Application;

    sput-object p2, Lcom/coloros/translate/base/a;->a:Lcom/coloros/translate/base/b;

    return-void
.end method
