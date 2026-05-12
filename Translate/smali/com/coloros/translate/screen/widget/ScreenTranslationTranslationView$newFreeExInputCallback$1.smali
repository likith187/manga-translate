.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;
.super Landroid/os/IOplusExInputCallBack$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->s0()Landroid/os/IOplusExInputCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-direct {p0}, Landroid/os/IOplusExInputCallBack$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->R(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/l;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->K(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)I

    move-result v0

    if-lez v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->S(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v1, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->S(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)[I

    move-result-object v4

    aget v2, v4, v2

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->S(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v6}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->K(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newFreeExInputCallback:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", navBarHeight: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", back: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ScreenTranslationTranslationView"

    invoke-virtual {v3, v4, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->S(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)[I

    move-result-object v2

    aget v2, v2, v5

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->K(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    :cond_0
    return-void
.end method
