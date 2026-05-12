.class Li2/j$a;
.super Landroidx/room/c;
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

    iput-object p1, p0, Li2/j$a;->d:Li2/j;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR ABORT INTO `text_history` (`oriContent`,`oriLanguageCode`,`resultContent`,`resultLanguageCode`,`timestamp`,`state`,`expandField1`,`expandField2`,`expandField3`,`globalId`,`type`,`updateTimestamp`,`id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,nullif(?, 0))"

    return-object p0
.end method

.method public bridge synthetic g(Ls0/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/translate/repository/local/TextHistory;

    invoke-virtual {p0, p1, p2}, Li2/j$a;->l(Ls0/f;Lcom/coloros/translate/repository/local/TextHistory;)V

    return-void
.end method

.method public l(Ls0/f;Lcom/coloros/translate/repository/local/TextHistory;)V
    .locals 2

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getOriContent()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getOriContent()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getOriLanguageCode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getOriLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getResultContent()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getResultContent()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getResultLanguageCode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getResultLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_3
    const/4 p0, 0x5

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getState()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getExpandField1()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getExpandField1()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_4
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getExpandField2()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getExpandField2()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getExpandField3()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x9

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getExpandField3()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getGlobalId()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    if-nez p0, :cond_7

    invoke-interface {p1, v0}, Ls0/d;->M(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getGlobalId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ls0/d;->z(ILjava/lang/String;)V

    :goto_7
    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getType()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0xb

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/16 p0, 0xc

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getUpdateTimestamp()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    const/16 p0, 0xd

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/TextHistory;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    return-void
.end method
