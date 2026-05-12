.class Landroidx/fragment/app/Fragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->callStartTransitionListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/f0;

.field final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f0;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$e;->b:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$e;->a:Landroidx/fragment/app/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/Fragment$e;->a:Landroidx/fragment/app/f0;

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->g()V

    return-void
.end method
