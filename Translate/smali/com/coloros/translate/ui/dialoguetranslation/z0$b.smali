.class final Lcom/coloros/translate/ui/dialoguetranslation/z0$b;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->invoke(Lcom/coloros/translate/repository/local/Conversation;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 6

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addItem :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceToFaceTranslateFragment"

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v0

    const-string v2, "mLowerRecyclerView"

    const-string v3, "mUpperRecyclerView"

    const-string v4, "mBottomAdapter"

    const-string v5, "mTopAdapter"

    if-eqz v0, :cond_b

    .line 4
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2, v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->h(ILcom/coloros/translate/repository/local/Conversation;)V

    .line 7
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->x(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_5
    invoke-static {v0, v2, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    goto/16 :goto_1

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_7

    return-void

    .line 10
    :cond_7
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_8
    invoke-virtual {v3, v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->h(ILcom/coloros/translate/repository/local/Conversation;)V

    .line 11
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->v(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_a
    invoke-static {v0, v3, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    goto/16 :goto_1

    .line 13
    :cond_b
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 14
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_c

    return-void

    .line 15
    :cond_c
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_d
    invoke-virtual {v3, v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->h(ILcom/coloros/translate/repository/local/Conversation;)V

    .line 16
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->v(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_f
    invoke-static {v0, v3, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    goto :goto_1

    .line 18
    :cond_10
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    return-void

    .line 19
    :cond_11
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v2

    if-nez v2, :cond_12

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_12
    invoke-virtual {v2, v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->h(ILcom/coloros/translate/repository/local/Conversation;)V

    .line 20
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_13
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 21
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->x(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v2

    if-nez v2, :cond_14

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_14
    invoke-static {v0, v2, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->K()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 23
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->t(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "aiSignTextView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_15
    move-object v1, p0

    :goto_2
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method
