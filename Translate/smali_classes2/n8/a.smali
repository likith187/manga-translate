.class public final Ln8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lw8/q;


# direct methods
.method public constructor <init>(Lw8/q;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln8/a;->a:Lw8/q;

    return-void
.end method


# virtual methods
.method public final a()Lw8/q;
    .locals 0

    iget-object p0, p0, Ln8/a;->a:Lw8/q;

    return-object p0
.end method
