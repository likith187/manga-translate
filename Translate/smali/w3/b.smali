.class public Lw3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lw3/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw3/n;

    invoke-direct {v0}, Lw3/n;-><init>()V

    iput-object v0, p0, Lw3/b;->a:Lw3/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lw3/b;->a:Lw3/n;

    invoke-virtual {p0}, Lw3/n;->c()V

    return-void
.end method

.method public b()Lw3/a;
    .locals 0

    iget-object p0, p0, Lw3/b;->a:Lw3/n;

    return-object p0
.end method
