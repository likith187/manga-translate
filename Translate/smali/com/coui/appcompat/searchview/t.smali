.class public final synthetic Lcom/coui/appcompat/searchview/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

.field public final synthetic b:Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/t;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iput-object p2, p0, Lcom/coui/appcompat/searchview/t;->b:Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/t;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/t;->b:Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;

    invoke-static {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;)V

    return-void
.end method
