.class public abstract Lg9/f;
.super Lkotlinx/coroutines/x0;
.source "SourceFile"


# instance fields
.field private final f:I

.field private final h:I

.field private final i:J

.field private final j:Ljava/lang/String;

.field private k:Lg9/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/x0;-><init>()V

    iput p1, p0, Lg9/f;->f:I

    iput p2, p0, Lg9/f;->h:I

    iput-wide p3, p0, Lg9/f;->i:J

    iput-object p5, p0, Lg9/f;->j:Ljava/lang/String;

    invoke-direct {p0}, Lg9/f;->F0()Lg9/a;

    move-result-object p1

    iput-object p1, p0, Lg9/f;->k:Lg9/a;

    return-void
.end method

.method private final F0()Lg9/a;
    .locals 7

    new-instance v6, Lg9/a;

    iget v1, p0, Lg9/f;->f:I

    iget v2, p0, Lg9/f;->h:I

    iget-wide v3, p0, Lg9/f;->i:J

    iget-object v5, p0, Lg9/f;->j:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lg9/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final G0(Ljava/lang/Runnable;Lg9/i;Z)V
    .locals 0

    iget-object p0, p0, Lg9/f;->k:Lg9/a;

    invoke-virtual {p0, p1, p2, p3}, Lg9/a;->G(Ljava/lang/Runnable;Lg9/i;Z)V

    return-void
.end method

.method public x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lg9/f;->k:Lg9/a;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lg9/a;->I(Lg9/a;Ljava/lang/Runnable;Lg9/i;ZILjava/lang/Object;)V

    return-void
.end method
