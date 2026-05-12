.class public final synthetic Lz1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz1/f;


# direct methods
.method public synthetic constructor <init>(Lz1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/e;->a:Lz1/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lz1/e;->a:Lz1/f;

    invoke-static {p0}, Lz1/f;->t(Lz1/f;)V

    return-void
.end method
