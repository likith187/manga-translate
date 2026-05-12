.class public final Lo9/f$h;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/f;->Y0(ILo9/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo9/f;

.field final synthetic f:I

.field final synthetic g:Lo9/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo9/f;ILo9/b;)V
    .locals 0

    iput-object p3, p0, Lo9/f$h;->e:Lo9/f;

    iput p4, p0, Lo9/f$h;->f:I

    iput-object p5, p0, Lo9/f$h;->g:Lo9/b;

    invoke-direct {p0, p1, p2}, Ll9/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    iget-object v0, p0, Lo9/f$h;->e:Lo9/f;

    invoke-static {v0}, Lo9/f;->G(Lo9/f;)Lo9/l;

    move-result-object v0

    iget v1, p0, Lo9/f$h;->f:I

    iget-object v2, p0, Lo9/f$h;->g:Lo9/b;

    invoke-interface {v0, v1, v2}, Lo9/l;->c(ILo9/b;)V

    iget-object v0, p0, Lo9/f$h;->e:Lo9/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo9/f$h;->e:Lo9/f;

    invoke-static {v1}, Lo9/f;->k(Lo9/f;)Ljava/util/Set;

    move-result-object v1

    iget p0, p0, Lo9/f$h;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
