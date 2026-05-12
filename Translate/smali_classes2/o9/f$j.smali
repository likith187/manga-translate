.class public final Lo9/f$j;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/f;-><init>(Lo9/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo9/f;

.field final synthetic f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo9/f;J)V
    .locals 0

    iput-object p2, p0, Lo9/f$j;->e:Lo9/f;

    iput-wide p3, p0, Lo9/f$j;->f:J

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4, p2, p3}, Ll9/a;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 8

    iget-object v0, p0, Lo9/f$j;->e:Lo9/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo9/f$j;->e:Lo9/f;

    invoke-static {v1}, Lo9/f;->D(Lo9/f;)J

    move-result-wide v1

    iget-object v3, p0, Lo9/f$j;->e:Lo9/f;

    invoke-static {v3}, Lo9/f;->B(Lo9/f;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo9/f$j;->e:Lo9/f;

    invoke-static {v1}, Lo9/f;->B(Lo9/f;)J

    move-result-wide v4

    iget-object v1, p0, Lo9/f$j;->e:Lo9/f;

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Lo9/f;->v0(Lo9/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    :goto_0
    monitor-exit v0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lo9/f$j;->e:Lo9/f;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo9/f;->c(Lo9/f;Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo9/f$j;->e:Lo9/f;

    invoke-virtual {v0, v3, v2, v3}, Lo9/f;->k1(ZII)V

    iget-wide v0, p0, Lo9/f$j;->f:J

    :goto_1
    return-wide v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
