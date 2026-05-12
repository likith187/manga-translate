.class public final synthetic Lf5/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf5/i;

.field public final synthetic b:Lw3/j;


# direct methods
.method public synthetic constructor <init>(Lf5/i;Lw3/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/u;->a:Lf5/i;

    iput-object p2, p0, Lf5/u;->b:Lw3/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf5/u;->a:Lf5/i;

    iget-object p0, p0, Lf5/u;->b:Lw3/j;

    invoke-virtual {v0, p0}, Lf5/i;->i(Lw3/j;)V

    return-void
.end method
