.class public final synthetic Lx1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/n;

.field public final synthetic b:D


# direct methods
.method public synthetic constructor <init>(Lx1/n;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/d;->a:Lx1/n;

    iput-wide p2, p0, Lx1/d;->b:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lx1/d;->a:Lx1/n;

    iget-wide v1, p0, Lx1/d;->b:D

    invoke-static {v0, v1, v2}, Lx1/n;->d(Lx1/n;D)V

    return-void
.end method
