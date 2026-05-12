.class final Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/i0$f;->onStatus(ILjava/lang/String;)V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->s(Lcom/coloros/translate/ui/dialoguetranslation/i0;)Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->z(Lcom/coloros/translate/ui/dialoguetranslation/i0;ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-static {v0, v2, v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->z(Lcom/coloros/translate/ui/dialoguetranslation/i0;ZZ)V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$f$a;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/16 v0, 0x1eda

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->w(Lcom/coloros/translate/ui/dialoguetranslation/i0;I)V

    return-void
.end method
