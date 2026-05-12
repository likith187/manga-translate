.class Li2/j$c;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/j;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Li2/j;


# direct methods
.method constructor <init>(Li2/j;Landroidx/room/h;)V
    .locals 0

    iput-object p1, p0, Li2/j$c;->d:Li2/j;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `text_history` WHERE `id` = ?"

    return-object p0
.end method

.method public bridge synthetic g(Ls0/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/translate/repository/local/TextHistory;

    invoke-virtual {p0, p1, p2}, Li2/j$c;->j(Ls0/f;Lcom/coloros/translate/repository/local/TextHistory;)V

    return-void
.end method

.method public j(Ls0/f;Lcom/coloros/translate/repository/local/TextHistory;)V
    .locals 2

    const/4 p0, 0x1

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    return-void
.end method
