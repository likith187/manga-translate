.class public final synthetic Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/e$b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Landroidx/fragment/app/FragmentActivity;->T(Landroidx/fragment/app/FragmentActivity;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
