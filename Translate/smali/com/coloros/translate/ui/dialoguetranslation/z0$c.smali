.class final Lcom/coloros/translate/ui/dialoguetranslation/z0$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/z0;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;->invoke(Lcom/coloros/translate/repository/local/Conversation;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceToFaceTranslateFragment"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v0

    const-string v2, "mBottomAdapter"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->n(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 5
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->v(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "mLowerRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-static {p0, v1, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    goto :goto_2

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v0

    const-string v2, "mTopAdapter"

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->n(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7
    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_8

    return-void

    .line 9
    :cond_8
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->x(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "mUpperRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v1, v0

    :goto_1
    invoke-static {p0, v1, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    :goto_2
    return-void
.end method
