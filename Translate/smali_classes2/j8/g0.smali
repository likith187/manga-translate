.class public final synthetic Lj8/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/g0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lj8/g0;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lj8/m0;->f(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method
