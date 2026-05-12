.class public final synthetic Lg4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lg4/b;


# direct methods
.method public synthetic constructor <init>(Lg4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/d;->a:Lg4/b;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lg4/d;->a:Lg4/b;

    invoke-interface {p0}, Lg4/b;->handleBackInvoked()V

    return-void
.end method
