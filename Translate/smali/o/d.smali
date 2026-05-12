.class public Lo/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashSet;

.field private b:I

.field private c:Z

.field public final d:Lo/e;

.field public final e:Lo/d$a;

.field public f:Lo/d;

.field public g:I

.field h:I

.field i:Ll/i;


# direct methods
.method public constructor <init>(Lo/e;Lo/d$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/d;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lo/d;->g:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lo/d;->h:I

    iput-object p1, p0, Lo/d;->d:Lo/e;

    iput-object p2, p0, Lo/d;->e:Lo/d$a;

    return-void
.end method


# virtual methods
.method public a(Lo/d;I)Z
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lo/d;->b(Lo/d;IIZ)Z

    move-result p0

    return p0
.end method

.method public b(Lo/d;IIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo/d;->q()V

    return v0

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, Lo/d;->p(Lo/d;)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-object p1, p0, Lo/d;->f:Lo/d;

    iget-object p4, p1, Lo/d;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Lo/d;->a:Ljava/util/HashSet;

    :cond_2
    iget-object p1, p0, Lo/d;->f:Lo/d;

    iget-object p1, p1, Lo/d;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iput p2, p0, Lo/d;->g:I

    iput p3, p0, Lo/d;->h:I

    return v0
.end method

.method public c(ILjava/util/ArrayList;Lp/o;)V
    .locals 1

    iget-object p0, p0, Lo/d;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v0, v0, Lo/d;->d:Lo/e;

    invoke-static {v0, p1, p2, p3}, Lp/i;->a(Lo/e;ILjava/util/ArrayList;Lp/o;)Lp/o;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lo/d;->a:Ljava/util/HashSet;

    return-object p0
.end method

.method public e()I
    .locals 1

    iget-boolean v0, p0, Lo/d;->c:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lo/d;->b:I

    return p0
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lo/d;->d:Lo/e;

    invoke-virtual {v0}, Lo/e;->X()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lo/d;->h:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lo/d;->d:Lo/e;

    invoke-virtual {v0}, Lo/e;->X()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget p0, p0, Lo/d;->h:I

    return p0

    :cond_1
    iget p0, p0, Lo/d;->g:I

    return p0
.end method

.method public final g()Lo/d;
    .locals 1

    iget-object v0, p0, Lo/d;->e:Lo/d$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object p0, p0, Lo/d;->e:Lo/d$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object p0, p0, Lo/d;->d:Lo/e;

    iget-object p0, p0, Lo/e;->R:Lo/d;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lo/d;->d:Lo/e;

    iget-object p0, p0, Lo/e;->Q:Lo/d;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lo/d;->d:Lo/e;

    iget-object p0, p0, Lo/e;->T:Lo/d;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lo/d;->d:Lo/e;

    iget-object p0, p0, Lo/e;->S:Lo/d;

    return-object p0

    :pswitch_4
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public h()Lo/e;
    .locals 0

    iget-object p0, p0, Lo/d;->d:Lo/e;

    return-object p0
.end method

.method public i()Ll/i;
    .locals 0

    iget-object p0, p0, Lo/d;->i:Ll/i;

    return-object p0
.end method

.method public j()Lo/d;
    .locals 0

    iget-object p0, p0, Lo/d;->f:Lo/d;

    return-object p0
.end method

.method public k()Lo/d$a;
    .locals 0

    iget-object p0, p0, Lo/d;->e:Lo/d$a;

    return-object p0
.end method

.method public l()Z
    .locals 2

    iget-object p0, p0, Lo/d;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/d;

    invoke-virtual {v1}, Lo/d;->g()Lo/d;

    move-result-object v1

    invoke-virtual {v1}, Lo/d;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public m()Z
    .locals 1

    iget-object p0, p0, Lo/d;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lo/d;->c:Z

    return p0
.end method

.method public o()Z
    .locals 0

    iget-object p0, p0, Lo/d;->f:Lo/d;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p(Lo/d;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lo/d;->k()Lo/d$a;

    move-result-object v1

    iget-object v2, p0, Lo/d;->e:Lo/d$a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    sget-object v1, Lo/d$a;->BASELINE:Lo/d$a;

    if-ne v2, v1, :cond_2

    invoke-virtual {p1}, Lo/d;->h()Lo/e;

    move-result-object p1

    invoke-virtual {p1}, Lo/e;->b0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lo/d;->h()Lo/e;

    move-result-object p0

    invoke-virtual {p0}, Lo/e;->b0()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    iget-object p0, p0, Lo/d;->e:Lo/d$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    sget-object p0, Lo/d$a;->BASELINE:Lo/d$a;

    if-eq v1, p0, :cond_4

    sget-object p0, Lo/d$a;->CENTER_X:Lo/d$a;

    if-eq v1, p0, :cond_4

    sget-object p0, Lo/d$a;->CENTER_Y:Lo/d$a;

    if-eq v1, p0, :cond_4

    move v0, v3

    :cond_4
    return v0

    :pswitch_1
    sget-object p0, Lo/d$a;->LEFT:Lo/d$a;

    if-eq v1, p0, :cond_6

    sget-object p0, Lo/d$a;->RIGHT:Lo/d$a;

    if-ne v1, p0, :cond_5

    goto :goto_0

    :cond_5
    return v3

    :cond_6
    :goto_0
    return v0

    :pswitch_2
    sget-object p0, Lo/d$a;->TOP:Lo/d$a;

    if-eq v1, p0, :cond_8

    sget-object p0, Lo/d$a;->BOTTOM:Lo/d$a;

    if-ne v1, p0, :cond_7

    goto :goto_1

    :cond_7
    move p0, v0

    goto :goto_2

    :cond_8
    :goto_1
    move p0, v3

    :goto_2
    invoke-virtual {p1}, Lo/d;->h()Lo/e;

    move-result-object p1

    instance-of p1, p1, Lo/h;

    if-eqz p1, :cond_b

    if-nez p0, :cond_9

    sget-object p0, Lo/d$a;->CENTER_Y:Lo/d$a;

    if-ne v1, p0, :cond_a

    :cond_9
    move v0, v3

    :cond_a
    move p0, v0

    :cond_b
    return p0

    :pswitch_3
    sget-object p0, Lo/d$a;->LEFT:Lo/d$a;

    if-eq v1, p0, :cond_d

    sget-object p0, Lo/d$a;->RIGHT:Lo/d$a;

    if-ne v1, p0, :cond_c

    goto :goto_3

    :cond_c
    move p0, v0

    goto :goto_4

    :cond_d
    :goto_3
    move p0, v3

    :goto_4
    invoke-virtual {p1}, Lo/d;->h()Lo/e;

    move-result-object p1

    instance-of p1, p1, Lo/h;

    if-eqz p1, :cond_10

    if-nez p0, :cond_e

    sget-object p0, Lo/d$a;->CENTER_X:Lo/d$a;

    if-ne v1, p0, :cond_f

    :cond_e
    move v0, v3

    :cond_f
    move p0, v0

    :cond_10
    return p0

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lo/d;->f:Lo/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/d;->f:Lo/d;

    iget-object v0, v0, Lo/d;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/d;->f:Lo/d;

    iput-object v1, v0, Lo/d;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Lo/d;->a:Ljava/util/HashSet;

    iput-object v1, p0, Lo/d;->f:Lo/d;

    const/4 v0, 0x0

    iput v0, p0, Lo/d;->g:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lo/d;->h:I

    iput-boolean v0, p0, Lo/d;->c:Z

    iput v0, p0, Lo/d;->b:I

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/d;->c:Z

    iput v0, p0, Lo/d;->b:I

    return-void
.end method

.method public s(Ll/c;)V
    .locals 2

    iget-object p1, p0, Lo/d;->i:Ll/i;

    if-nez p1, :cond_0

    new-instance p1, Ll/i;

    sget-object v0, Ll/i$a;->UNRESTRICTED:Ll/i$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ll/i;-><init>(Ll/i$a;Ljava/lang/String;)V

    iput-object p1, p0, Lo/d;->i:Ll/i;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ll/i;->e()V

    :goto_0
    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Lo/d;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/d;->c:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/d;->d:Lo/e;

    invoke-virtual {v1}, Lo/e;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo/d;->e:Lo/d$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(I)V
    .locals 1

    invoke-virtual {p0}, Lo/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lo/d;->h:I

    :cond_0
    return-void
.end method
