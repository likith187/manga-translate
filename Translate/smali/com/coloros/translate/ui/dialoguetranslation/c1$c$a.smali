.class final Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/c1$c;->onStatus(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->s(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v0

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0, v2, v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/16 v0, 0x1eda

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->A(Lcom/coloros/translate/ui/dialoguetranslation/c1;I)V

    return-void
.end method
