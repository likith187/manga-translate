.class public final Lkotlin/sequences/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/f;


# instance fields
.field private final a:Lkotlin/sequences/f;

.field private final b:Z

.field private final c:Lw8/l;


# direct methods
.method public constructor <init>(Lkotlin/sequences/f;ZLw8/l;)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/d;->a:Lkotlin/sequences/f;

    iput-boolean p2, p0, Lkotlin/sequences/d;->b:Z

    iput-object p3, p0, Lkotlin/sequences/d;->c:Lw8/l;

    return-void
.end method

.method public static final synthetic b(Lkotlin/sequences/d;)Lw8/l;
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/d;->c:Lw8/l;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/sequences/d;)Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/sequences/d;->b:Z

    return p0
.end method

.method public static final synthetic d(Lkotlin/sequences/d;)Lkotlin/sequences/f;
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/d;->a:Lkotlin/sequences/f;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/sequences/d$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/d$a;-><init>(Lkotlin/sequences/d;)V

    return-object v0
.end method
