.class Lp/g;
.super Lp/f;
.source "SourceFile"


# instance fields
.field public m:I


# direct methods
.method constructor <init>(Lp/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lp/f;-><init>(Lp/p;)V

    instance-of p1, p1, Lp/l;

    if-eqz p1, :cond_0

    sget-object p1, Lp/f$a;->HORIZONTAL_DIMENSION:Lp/f$a;

    iput-object p1, p0, Lp/f;->e:Lp/f$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lp/f$a;->VERTICAL_DIMENSION:Lp/f$a;

    iput-object p1, p0, Lp/f;->e:Lp/f$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    iget-boolean v0, p0, Lp/f;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/f;->j:Z

    iput p1, p0, Lp/f;->g:I

    iget-object p0, p0, Lp/f;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp/d;

    invoke-interface {p1, p1}, Lp/d;->a(Lp/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method
