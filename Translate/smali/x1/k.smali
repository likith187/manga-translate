.class public final synthetic Lx1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/n;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lx1/n;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/k;->a:Lx1/n;

    iput-object p2, p0, Lx1/k;->b:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx1/k;->a:Lx1/n;

    iget-object p0, p0, Lx1/k;->b:[B

    invoke-static {v0, p0}, Lx1/n;->g(Lx1/n;[B)V

    return-void
.end method
