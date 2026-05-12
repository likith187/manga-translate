.class public final Lcom/coloros/translate/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/m;

.field public static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/m;

    invoke-direct {v0}, Lcom/coloros/translate/utils/m;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "applicationContext"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/m;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    return-void
.end method
