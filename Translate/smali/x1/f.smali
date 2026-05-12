.class public final synthetic Lx1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/n;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lx1/n;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/f;->a:Lx1/n;

    iput p2, p0, Lx1/f;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx1/f;->a:Lx1/n;

    iget p0, p0, Lx1/f;->b:I

    invoke-static {v0, p0}, Lx1/n;->f(Lx1/n;I)V

    return-void
.end method
