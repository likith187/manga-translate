.class public final Lcom/coloros/translate/screen/utils/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/utils/u$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/u;

.field private static final a:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/u;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/u;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/u;->INSTANCE:Lcom/coloros/translate/screen/utils/u;

    sget-object v0, Lcom/coloros/translate/screen/utils/u$b;->INSTANCE:Lcom/coloros/translate/screen/utils/u$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/u;->a:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lcom/coloros/translate/screen/utils/u$a;
    .locals 0

    sget-object p0, Lcom/coloros/translate/screen/utils/u;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/utils/u$a;

    return-object p0
.end method

.method public static final b(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void
.end method

.method public static final c(II)V
    .locals 2

    sget-object v0, Lcom/coloros/translate/screen/utils/u;->INSTANCE:Lcom/coloros/translate/screen/utils/u;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/u;->a()Lcom/coloros/translate/screen/utils/u$a;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v1}, Lcom/coloros/translate/base/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/screen/utils/u$a;->o(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic d(IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/screen/utils/u;->c(II)V

    return-void
.end method
