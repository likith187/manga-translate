.class final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$k;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$k;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;
    .locals 3

    .line 2
    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$k;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->E(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$k;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->N(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    move-result-object v2

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$k;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-direct {v0, v1, v2, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/coloros/translate/screen/widget/h;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$k;->invoke()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    return-object p0
.end method
