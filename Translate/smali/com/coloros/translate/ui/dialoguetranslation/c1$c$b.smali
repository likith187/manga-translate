.class final Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;
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
.field final synthetic $code:I

.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;


# direct methods
.method constructor <init>(ILcom/coloros/translate/ui/dialoguetranslation/c1;)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;->$code:I

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;->$code:I

    sget-object v1, Lcom/coloros/translate/repository/b;->TRANSLATION_SERVICE_DIED:Lcom/coloros/translate/repository/b;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->q(Lcom/coloros/translate/ui/dialoguetranslation/c1;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->j(JLjava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$c$b;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    return-void
.end method
