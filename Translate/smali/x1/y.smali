.class public final synthetic Lx1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/g0;


# direct methods
.method public synthetic constructor <init>(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/y;->a:Lx1/g0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lx1/y;->a:Lx1/g0;

    invoke-static {p0}, Lx1/g0;->n(Lx1/g0;)V

    return-void
.end method
