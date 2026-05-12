.class public final Lkotlin/sequences/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lx8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/n;->g(Lkotlin/sequences/f;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/sequences/f;


# direct methods
.method public constructor <init>(Lkotlin/sequences/f;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/n$a;->a:Lkotlin/sequences/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/n$a;->a:Lkotlin/sequences/f;

    invoke-interface {p0}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
