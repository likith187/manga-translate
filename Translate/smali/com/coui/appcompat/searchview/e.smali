.class public final synthetic Lcom/coui/appcompat/searchview/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/e;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/e;->a:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchBar;->b(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    return-void
.end method
