.class final Lcom/coloros/translate/base/BasePrivateActivity$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/base/BasePrivateActivity;->F0(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/base/BasePrivateActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/translate/base/BasePrivateActivity<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/coloros/translate/base/BasePrivateActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/base/BasePrivateActivity<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/base/BasePrivateActivity$d;->this$0:Lcom/coloros/translate/base/BasePrivateActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity$d;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->F()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/base/BasePrivateActivity$d;->this$0:Lcom/coloros/translate/base/BasePrivateActivity;

    instance-of v1, v0, Lcom/coloros/translate/ui/MainActivity;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    if-eqz v0, :cond_2

    .line 5
    :cond_1
    sget-object v0, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/a0;->f()V

    .line 6
    new-instance v0, Ld2/c;

    iget-object p0, p0, Lcom/coloros/translate/base/BasePrivateActivity$d;->this$0:Lcom/coloros/translate/base/BasePrivateActivity;

    invoke-direct {v0, p0}, Ld2/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Ld2/c;->f()V

    :cond_2
    return-void
.end method
