.class public abstract Lcom/coloros/translate/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/utils/j$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/translate/utils/j$a;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/utils/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lcom/coloros/translate/utils/j;->b:J

    return-wide v0
.end method

.method public static final synthetic b(J)V
    .locals 0

    sput-wide p0, Lcom/coloros/translate/utils/j;->b:J

    return-void
.end method

.method public static final c(J)Z
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/j$a;->b(J)Z

    move-result p0

    return p0
.end method
