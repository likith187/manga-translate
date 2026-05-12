.class final Lcom/coloros/translate/ui/MainActivity$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/MainActivity;->y1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity$f;->this$0:Lcom/coloros/translate/ui/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/MainActivity$f;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity$f;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
