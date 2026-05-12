.class public abstract Lo/n;
.super Lo/e;
.source "SourceFile"


# instance fields
.field public V0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/n;->V0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public b(Lo/e;)V
    .locals 1

    iget-object v0, p0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lo/e;->M()Lo/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/e;->M()Lo/e;

    move-result-object v0

    check-cast v0, Lo/n;

    invoke-virtual {v0, p1}, Lo/n;->y1(Lo/e;)V

    :cond_0
    invoke-virtual {p1, p0}, Lo/e;->h1(Lo/e;)V

    return-void
.end method

.method public v0()V
    .locals 1

    iget-object v0, p0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lo/e;->v0()V

    return-void
.end method

.method public w1()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lo/n;->V0:Ljava/util/ArrayList;

    return-object p0
.end method

.method public abstract x1()V
.end method

.method public y1(Lo/e;)V
    .locals 0

    iget-object p0, p0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lo/e;->v0()V

    return-void
.end method

.method public z0(Ll/c;)V
    .locals 3

    invoke-super {p0, p1}, Lo/e;->z0(Ll/c;)V

    iget-object v0, p0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/e;

    invoke-virtual {v2, p1}, Lo/e;->z0(Ll/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z1()V
    .locals 0

    iget-object p0, p0, Lo/n;->V0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
