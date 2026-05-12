.class final Lcom/coloros/translate/ui/simultaneous/main/c$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/c;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/main/c;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/c$b;->this$0:Lcom/coloros/translate/ui/simultaneous/main/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/c$b;->this$0:Lcom/coloros/translate/ui/simultaneous/main/c;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/c;->k()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/coloros/translate/R$id;->emptySpeakLoading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/c$b;->invoke()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method
