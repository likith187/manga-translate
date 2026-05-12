.class public abstract Lcom/coloros/translate/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "high"

    const-string v1, "higher"

    const-string v2, "low"

    const-string v3, "normal"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/l;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/l;->a:Ljava/util/ArrayList;

    return-object v0
.end method
