.class final Lcom/coloros/translate/ui/dialoguetranslation/i0$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/i0;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$d;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$d;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogueTranslationViewModel"

    const-string v2, "loadData"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->c()Li2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$d;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Li2/a;->e(II)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$d;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$d;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->H()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
