.class final Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;->this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;->invoke(Landroid/view/View;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;->this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->e0()Landroidx/lifecycle/a0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;->this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->o0()Landroidx/lifecycle/a0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;->this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    .line 5
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;->this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)Lcom/coloros/translate/o;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/coloros/translate/o;->H(Lcom/coloros/translate/o;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
