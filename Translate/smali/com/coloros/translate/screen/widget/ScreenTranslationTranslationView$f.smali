.class final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->w0(IZ)V
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

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$f;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$f;->invoke(Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 3

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityLayerMonitor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$f;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->c0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Z)V

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$f;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setSecurityLayer(Z)V

    return-void
.end method
