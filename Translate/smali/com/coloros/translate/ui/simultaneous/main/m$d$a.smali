.class final Lcom/coloros/translate/ui/simultaneous/main/m$d$a;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d$a;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m$d$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d$a;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/coloros/translate/R$string;->no_sound_detected3:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$d$a;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->L0()V

    :cond_0
    return-void
.end method
