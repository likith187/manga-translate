.class public final synthetic Ld7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Ld7/f;


# direct methods
.method public synthetic constructor <init>(Ld7/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/e;->a:Ld7/f;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p0, p0, Ld7/e;->a:Ld7/f;

    invoke-static {p0, p1, p2}, Ld7/f;->a(Ld7/f;J)V

    return-void
.end method
