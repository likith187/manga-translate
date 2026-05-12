.class public final Lkotlin/sequences/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/j;->b(Lw8/p;)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/p;


# direct methods
.method public constructor <init>(Lw8/p;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/j$a;->a:Lw8/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/j$a;->a:Lw8/p;

    invoke-static {p0}, Lkotlin/sequences/j;->a(Lw8/p;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
