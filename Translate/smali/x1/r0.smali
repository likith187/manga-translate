.class public final synthetic Lx1/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/z0;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lx1/z0;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/r0;->a:Lx1/z0;

    iput-object p2, p0, Lx1/r0;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx1/r0;->a:Lx1/z0;

    iget-object p0, p0, Lx1/r0;->b:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lx1/z0;->d(Lx1/z0;Landroid/os/Bundle;)V

    return-void
.end method
