.class public abstract Lkotlin/collections/e;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Lx8/d;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract c(I)Ljava/lang/Object;
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/collections/e;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/e;->a()I

    move-result p0

    return p0
.end method
