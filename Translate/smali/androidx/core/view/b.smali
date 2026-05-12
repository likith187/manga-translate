.class public abstract Landroidx/core/view/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/b$b;,
        Landroidx/core/view/b$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider(support)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Landroidx/core/view/b$a;

.field private mVisibilityListener:Landroidx/core/view/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/b;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/b;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public abstract hasSubMenu()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
.end method

.method public abstract onPerformDefaultAction()Z
.end method

.method public abstract onPrepareSubMenu(Landroid/view/SubMenu;)V
.end method

.method public abstract overridesItemVisibility()Z
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/b;->mVisibilityListener:Landroidx/core/view/b$b;

    iput-object v0, p0, Landroidx/core/view/b;->mSubUiVisibilityListener:Landroidx/core/view/b$a;

    return-void
.end method

.method public setSubUiVisibilityListener(Landroidx/core/view/b$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/b;->mSubUiVisibilityListener:Landroidx/core/view/b$a;

    return-void
.end method

.method public abstract setVisibilityListener(Landroidx/core/view/b$b;)V
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/b;->mSubUiVisibilityListener:Landroidx/core/view/b$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/core/view/b$a;->a(Z)V

    :cond_0
    return-void
.end method
