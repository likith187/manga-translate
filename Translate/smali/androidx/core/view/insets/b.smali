.class public final synthetic Landroidx/core/view/insets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a0;


# instance fields
.field public final synthetic a:Landroidx/core/view/insets/d;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/b;->a:Landroidx/core/view/insets/d;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/insets/b;->a:Landroidx/core/view/insets/d;

    invoke-static {p0, p1, p2}, Landroidx/core/view/insets/d;->b(Landroidx/core/view/insets/d;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method
