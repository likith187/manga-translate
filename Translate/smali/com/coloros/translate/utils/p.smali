.class public final Lcom/coloros/translate/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/p;

.field private static final a:Ljava/util/List;

.field private static final b:Ln8/j;

.field private static final c:Ln8/j;

.field private static final d:Ln8/j;

.field private static final e:Ln8/j;

.field private static final f:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/utils/p;

    invoke-direct {v0}, Lcom/coloros/translate/utils/p;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/p;->INSTANCE:Lcom/coloros/translate/utils/p;

    const-string v0, "22003"

    const-string v1, "22203"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/p;->a:Ljava/util/List;

    sget-object v0, Lcom/coloros/translate/utils/p$e;->INSTANCE:Lcom/coloros/translate/utils/p$e;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/p;->b:Ln8/j;

    sget-object v0, Lcom/coloros/translate/utils/p$a;->INSTANCE:Lcom/coloros/translate/utils/p$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/p;->c:Ln8/j;

    sget-object v0, Lcom/coloros/translate/utils/p$c;->INSTANCE:Lcom/coloros/translate/utils/p$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/p;->d:Ln8/j;

    sget-object v0, Lcom/coloros/translate/utils/p$d;->INSTANCE:Lcom/coloros/translate/utils/p$d;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/p;->e:Ln8/j;

    sget-object v0, Lcom/coloros/translate/utils/p$b;->INSTANCE:Lcom/coloros/translate/utils/p$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/p;->f:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/p;->a:Ljava/util/List;

    return-object v0
.end method

.method public static final b()Ljava/lang/String;
    .locals 4

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEquipmentBrand brand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceUtils"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tablet"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lcom/coloros/translate/utils/z;->b(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "foldScreenPhone"

    goto :goto_0

    :cond_1
    const-string v0, "nonFoldPhone"

    :goto_0
    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOSVersion osVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceUtils"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final e()Z
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/p;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
