.class public final Lo9/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private final b:Ll9/e;

.field public c:Ljava/net/Socket;

.field public d:Ljava/lang/String;

.field public e:Lt9/f;

.field public f:Lt9/e;

.field private g:Lo9/f$c;

.field private h:Lo9/l;

.field private i:I


# direct methods
.method public constructor <init>(ZLl9/e;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo9/f$a;->a:Z

    iput-object p2, p0, Lo9/f$a;->b:Ll9/e;

    sget-object p1, Lo9/f$c;->b:Lo9/f$c;

    iput-object p1, p0, Lo9/f$a;->g:Lo9/f$c;

    sget-object p1, Lo9/l;->b:Lo9/l;

    iput-object p1, p0, Lo9/f$a;->h:Lo9/l;

    return-void
.end method


# virtual methods
.method public final a()Lo9/f;
    .locals 1

    new-instance v0, Lo9/f;

    invoke-direct {v0, p0}, Lo9/f;-><init>(Lo9/f$a;)V

    return-object v0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lo9/f$a;->a:Z

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo9/f$a;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "connectionName"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lo9/f$c;
    .locals 0

    iget-object p0, p0, Lo9/f$a;->g:Lo9/f$c;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lo9/f$a;->i:I

    return p0
.end method

.method public final f()Lo9/l;
    .locals 0

    iget-object p0, p0, Lo9/f$a;->h:Lo9/l;

    return-object p0
.end method

.method public final g()Lt9/e;
    .locals 0

    iget-object p0, p0, Lo9/f$a;->f:Lt9/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sink"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lo9/f$a;->c:Ljava/net/Socket;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "socket"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i()Lt9/f;
    .locals 0

    iget-object p0, p0, Lo9/f$a;->e:Lt9/f;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "source"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ll9/e;
    .locals 0

    iget-object p0, p0, Lo9/f$a;->b:Ll9/e;

    return-object p0
.end method

.method public final k(Lo9/f$c;)Lo9/f$a;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo9/f$a;->g:Lo9/f$c;

    return-object p0
.end method

.method public final l(I)Lo9/f$a;
    .locals 0

    iput p1, p0, Lo9/f$a;->i:I

    return-object p0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo9/f$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final n(Lt9/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo9/f$a;->f:Lt9/e;

    return-void
.end method

.method public final o(Ljava/net/Socket;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo9/f$a;->c:Ljava/net/Socket;

    return-void
.end method

.method public final p(Lt9/f;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo9/f$a;->e:Lt9/f;

    return-void
.end method

.method public final q(Ljava/net/Socket;Ljava/lang/String;Lt9/f;Lt9/e;)Lo9/f$a;
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo9/f$a;->o(Ljava/net/Socket;)V

    iget-boolean p1, p0, Lo9/f$a;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Li9/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MockWebServer "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lo9/f$a;->m(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lo9/f$a;->p(Lt9/f;)V

    invoke-virtual {p0, p4}, Lo9/f$a;->n(Lt9/e;)V

    return-object p0
.end method
