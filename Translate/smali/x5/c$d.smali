.class public final Lx5/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ln8/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ln8/n;->SYNCHRONIZED:Ln8/n;

    sget-object v1, Lx5/c$d$a;->INSTANCE:Lx5/c$d$a;

    invoke-static {v0, v1}, Ln8/k;->a(Ln8/n;Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lx5/c$d;->a:Ln8/j;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lx5/c$d;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
