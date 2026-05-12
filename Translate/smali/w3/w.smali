.class final Lw3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/g;


# instance fields
.field final synthetic a:Lw3/j;


# direct methods
.method constructor <init>(Lw3/j;)V
    .locals 0

    iput-object p1, p0, Lw3/w;->a:Lw3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lw3/w;->a:Lw3/j;

    invoke-static {p0}, Lw3/j;->f(Lw3/j;)Lw3/z;

    move-result-object p0

    invoke-virtual {p0}, Lw3/z;->n()Z

    return-void
.end method
