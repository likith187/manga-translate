.class public final synthetic Lcom/coloros/translate/screen/widget/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

.field public final synthetic b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic f:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/k0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/k0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/k0;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/coloros/translate/screen/widget/k0;->f:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/k0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/k0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/k0;->c:Landroid/view/View;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/k0;->f:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v0, v1, v2, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
