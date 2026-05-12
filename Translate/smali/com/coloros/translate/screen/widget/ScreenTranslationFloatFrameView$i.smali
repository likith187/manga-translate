.class final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->I(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/oplus/vfxsdk/naive/a;

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/oplus/vfxsdk/naive/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->x(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->u(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SelectStart anim end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->u(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    const-string v0, "SelectLoop"

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/a;->y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
