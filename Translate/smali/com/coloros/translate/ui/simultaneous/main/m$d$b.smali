.class final Lcom/coloros/translate/ui/simultaneous/main/m$d$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/m$d;->onStatus(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/main/m;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d$b;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m$d$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d$b;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->T()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
