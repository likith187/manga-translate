.class public final Lkotlin/sequences/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/f;


# instance fields
.field private final a:Lkotlin/sequences/f;

.field private final b:Lw8/l;


# direct methods
.method public constructor <init>(Lkotlin/sequences/f;Lw8/l;)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/o;->a:Lkotlin/sequences/f;

    iput-object p2, p0, Lkotlin/sequences/o;->b:Lw8/l;

    return-void
.end method

.method public static final synthetic b(Lkotlin/sequences/o;)Lkotlin/sequences/f;
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/o;->a:Lkotlin/sequences/f;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/sequences/o;)Lw8/l;
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/o;->b:Lw8/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/sequences/o$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/o$a;-><init>(Lkotlin/sequences/o;)V

    return-object v0
.end method
