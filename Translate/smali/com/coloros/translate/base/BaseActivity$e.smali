.class final Lcom/coloros/translate/base/BaseActivity$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/base/BaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/base/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/translate/base/BaseActivity<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/coloros/translate/base/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/base/BaseActivity<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/base/BaseActivity$e;->this$0:Lcom/coloros/translate/base/BaseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/base/BaseActivity$e;->this$0:Lcom/coloros/translate/base/BaseActivity;

    invoke-virtual {v0}, Lcom/coloros/translate/base/BaseActivity;->k0()Ljava/lang/Class;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/coloros/translate/base/BaseActivity$e;->this$0:Lcom/coloros/translate/base/BaseActivity;

    invoke-static {p0}, Landroidx/lifecycle/v0;->b(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/u0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/u0;->b(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/base/q;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity$e;->invoke()Lcom/coloros/translate/base/q;

    move-result-object p0

    return-object p0
.end method
