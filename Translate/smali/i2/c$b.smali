.class Li2/c$b;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/c;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Li2/c;


# direct methods
.method constructor <init>(Li2/c;Landroidx/room/h;)V
    .locals 0

    iput-object p1, p0, Li2/c$b;->d:Li2/c;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `conversationHistory` WHERE `conversationId` = ?"

    return-object p0
.end method

.method public bridge synthetic g(Ls0/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0, p1, p2}, Li2/c$b;->j(Ls0/f;Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method

.method public j(Ls0/f;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 2

    const/4 p0, 0x1

    invoke-virtual {p2}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Ls0/d;->e0(IJ)V

    return-void
.end method
