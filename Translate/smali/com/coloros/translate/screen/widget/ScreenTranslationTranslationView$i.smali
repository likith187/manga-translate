.class final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->Q(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/engine/panel/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->D(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->G(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->D(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;ZILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A1()V

    return-void
.end method
