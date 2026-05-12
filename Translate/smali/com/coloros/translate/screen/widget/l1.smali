.class public final synthetic Lcom/coloros/translate/screen/widget/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

.field public final synthetic b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field public final synthetic c:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/l1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/l1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/l1;->c:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/l1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/l1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/l1;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->k(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
