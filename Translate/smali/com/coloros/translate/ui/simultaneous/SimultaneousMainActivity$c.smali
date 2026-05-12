.class final Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->u(ZZ)V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    iput-boolean p2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->$isFinish:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->invoke$lambda$0(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->o1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->b0()V

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->o1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c$a;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->J0(Lw8/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->n1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->w0()V

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->$isFinish:Z

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/n;

    invoke-direct {v1, v0, p0}, Lcom/coloros/translate/ui/simultaneous/n;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1, p0, v0}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
