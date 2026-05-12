.class public final synthetic Lx1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/n;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lx1/n;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/l;->a:Lx1/n;

    iput p2, p0, Lx1/l;->b:I

    iput-object p3, p0, Lx1/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx1/l;->a:Lx1/n;

    iget v1, p0, Lx1/l;->b:I

    iget-object p0, p0, Lx1/l;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lx1/n;->c(Lx1/n;ILjava/lang/String;)V

    return-void
.end method
