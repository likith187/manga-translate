.class final Lcom/coloros/translate/ui/dialoguetranslation/z0$e;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$e;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0$e;->invoke(Lcom/coloros/translate/repository/local/Conversation;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mTopAdapter"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$e;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->m(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 5
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$e;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->m(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_4
    return-void
.end method
