.class public final synthetic Lx1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/n;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lx1/n;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/j;->a:Lx1/n;

    iput p2, p0, Lx1/j;->b:I

    iput p3, p0, Lx1/j;->c:I

    iput-object p4, p0, Lx1/j;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lx1/j;->a:Lx1/n;

    iget v1, p0, Lx1/j;->b:I

    iget v2, p0, Lx1/j;->c:I

    iget-object p0, p0, Lx1/j;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lx1/n;->j(Lx1/n;IILjava/lang/String;)V

    return-void
.end method
