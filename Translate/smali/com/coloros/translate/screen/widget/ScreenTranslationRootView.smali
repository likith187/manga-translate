.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/coloros/translate/screen/widget/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/translate/screen/widget/h;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;->a:Lcom/coloros/translate/screen/widget/h;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;->a:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {p0, p1}, Lcom/coloros/translate/screen/widget/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
