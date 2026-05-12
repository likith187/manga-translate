.class public Lcom/coui/appcompat/searchview/COUISearchView$COUISearchAutoComplete;
.super Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUISearchAutoComplete"
.end annotation


# static fields
.field private static final VERSION_CODE_U:I = 0x22


# instance fields
.field private mEnableNativeKeyPreIme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView$COUISearchAutoComplete;->mEnableNativeKeyPreIme:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView$COUISearchAutoComplete;->mEnableNativeKeyPreIme:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView$COUISearchAutoComplete;->mEnableNativeKeyPreIme:Z

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchView$COUISearchAutoComplete;->mEnableNativeKeyPreIme:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p2
.end method

.method public setEnableNativeKeyPreIme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView$COUISearchAutoComplete;->mEnableNativeKeyPreIme:Z

    return-void
.end method
