.class public final Lcom/oplus/vfxsdk/rsview/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/rsview/h$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/oplus/vfxsdk/rsview/h$a;


# instance fields
.field private a:Ljava/lang/Long;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/rsview/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/rsview/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/rsview/h;->c:Lcom/oplus/vfxsdk/rsview/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 9

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/h;->a:Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/h;->a:Ljava/lang/Long;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/oplus/vfxsdk/rsview/h;->b:J

    sub-long v7, v2, v7

    cmp-long v0, v7, v5

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    move v4, v1

    :cond_2
    if-eqz v4, :cond_3

    iput-wide v2, p0, Lcom/oplus/vfxsdk/rsview/h;->b:J

    :cond_3
    return v4
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 5

    const-string v0, "FpsControl"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x39387000

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/vfxsdk/rsview/h;->a:Ljava/lang/Long;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fps:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", invalidateGap:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/h;->a:Ljava/lang/Long;

    const-string p0, "invalidateGap null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
