.class public final synthetic Lx1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/n;


# direct methods
.method public synthetic constructor <init>(Lx1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/m;->a:Lx1/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lx1/m;->a:Lx1/n;

    invoke-static {p0}, Lx1/n;->a(Lx1/n;)V

    return-void
.end method
