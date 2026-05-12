.class public final synthetic Lx1/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/z0;


# direct methods
.method public synthetic constructor <init>(Lx1/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/x0;->a:Lx1/z0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lx1/x0;->a:Lx1/z0;

    invoke-static {p0}, Lx1/z0;->f(Lx1/z0;)V

    return-void
.end method
