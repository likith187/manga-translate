.class final Lcom/coloros/translate/ui/simultaneous/history/o0$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/o0;->z(Lcom/coloros/translate/ui/simultaneous/history/n0;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $info:Lcom/coloros/translate/ui/simultaneous/history/n0;

.field final synthetic $newName:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/n0;Ljava/lang/String;Lcom/coloros/translate/ui/simultaneous/history/o0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$e;->$info:Lcom/coloros/translate/ui/simultaneous/history/n0;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$e;->$newName:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$e;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/simultaneous/history/o0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$e;->invoke$lambda$0(Lcom/coloros/translate/ui/simultaneous/history/o0;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/ui/simultaneous/history/o0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->p(Z)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/coloros/translate/ui/simultaneous/history/o0;->w(Lcom/coloros/translate/ui/simultaneous/history/o0;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$e;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$e;->$info:Lcom/coloros/translate/ui/simultaneous/history/n0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$e;->$newName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteTitle(Ljava/lang/String;)V

    .line 4
    sget-object v1, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v1}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/AppDatabase;->t()Li2/d;

    move-result-object v1

    invoke-interface {v1, v0}, Li2/d;->a(Lcom/coloros/translate/repository/local/SimultaneousHistory;)V

    .line 5
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0$e;->this$0:Lcom/coloros/translate/ui/simultaneous/history/o0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/q0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/q0;-><init>(Lcom/coloros/translate/ui/simultaneous/history/o0;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
