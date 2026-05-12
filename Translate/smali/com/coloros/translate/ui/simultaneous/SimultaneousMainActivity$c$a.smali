.class final Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isFinish:Z

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    iput-boolean p2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;->$isFinish:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->p1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    sget v1, Lcom/coloros/translate/R$string;->simultaneous_save_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/utils/w;->i(Ljava/lang/String;IILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/coloros/translate/ui/simultaneous/utils/c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/c;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/c;->a(Landroid/content/Context;)V

    .line 5
    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;->$isFinish:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->finish()V

    :cond_0
    return-void
.end method
