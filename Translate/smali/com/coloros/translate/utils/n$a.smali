.class public final Lcom/coloros/translate/utils/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/utils/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lcom/coloros/translate/utils/n$a;->b:J

    iget-wide v2, p0, Lcom/coloros/translate/utils/n$a;->a:J

    sub-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lb9/d;->d(JJ)J

    move-result-wide v0

    iput-wide v2, p0, Lcom/coloros/translate/utils/n$a;->a:J

    iput-wide v2, p0, Lcom/coloros/translate/utils/n$a;->b:J

    return-wide v0
.end method

.method public final b()Z
    .locals 7

    iget-wide v0, p0, Lcom/coloros/translate/utils/n$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/coloros/translate/utils/n$a;->b:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-wide v4, p0, Lcom/coloros/translate/utils/n$a;->b:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNoValidData:"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " start:"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " end:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataTrackReporterOS15"

    invoke-virtual {v3, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/utils/n$a;->b:J

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/utils/n$a;->a:J

    return-void
.end method
