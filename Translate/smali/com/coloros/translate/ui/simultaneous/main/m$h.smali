.class final Lcom/coloros/translate/ui/simultaneous/main/m$h;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/m;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/translate/repository/local/SimultaneousSentence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $siHistory:Lcom/coloros/translate/repository/local/SimultaneousHistory;

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/main/m;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Ljava/util/List;Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/repository/local/SimultaneousHistory;",
            "Ljava/util/List<",
            "Lcom/coloros/translate/repository/local/SimultaneousSentence;",
            ">;",
            "Lcom/coloros/translate/ui/simultaneous/main/m;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->$siHistory:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->$list:Ljava/util/List;

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m$h;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->$siHistory:Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-static {v0}, Li2/f;->b(Lcom/coloros/translate/repository/local/SimultaneousHistory;)J

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->$list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Li2/f;->a(Ljava/util/List;)Z

    .line 5
    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    .line 6
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->$list:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/main/m;->k0()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/main/m;->a0()Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n;->c0(II)V

    .line 9
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->q(Lcom/coloros/translate/ui/simultaneous/main/m;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->y(Lcom/coloros/translate/ui/simultaneous/main/m;I)V

    .line 10
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$h;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->C(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    return-void
.end method
