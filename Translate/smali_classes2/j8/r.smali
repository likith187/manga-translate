.class public final synthetic Lj8/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoublePredicate;


# instance fields
.field public final synthetic a:D


# direct methods
.method public synthetic constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj8/r;->a:D

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .locals 2

    iget-wide v0, p0, Lj8/r;->a:D

    invoke-static {v0, v1, p1, p2}, Lj8/u;->e(DD)Z

    move-result p0

    return p0
.end method
