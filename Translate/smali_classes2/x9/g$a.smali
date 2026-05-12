.class public abstract Lx9/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a()Lx9/g;
    .locals 1

    invoke-static {}, Ly9/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly9/a;->b()Ly9/a;

    move-result-object v0

    iget-object v0, v0, Ly9/a;->a:Lx9/g;

    return-object v0

    :cond_0
    new-instance v0, Lx9/g$b;

    invoke-direct {v0}, Lx9/g$b;-><init>()V

    return-object v0
.end method
