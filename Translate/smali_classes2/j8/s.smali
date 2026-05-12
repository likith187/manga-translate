.class public final synthetic Lj8/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:D


# direct methods
.method public synthetic constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj8/s;->a:D

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lj8/s;->a:D

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, v1, p1}, Lj8/u;->b(DLjava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
