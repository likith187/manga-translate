.class public final Lcom/coloros/translate/screen/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/d;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/d;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/d;->INSTANCE:Lcom/coloros/translate/screen/utils/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/base/a;->e(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
