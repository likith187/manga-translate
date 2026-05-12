.class public Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUINavigationBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationBarContentObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;

    return-void
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;

    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 3
    invoke-static {}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->access$000()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "nav_bar_immersive"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 5
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p0, v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;->onNavigationBarChange(Z)V

    :cond_1
    return-void
.end method
