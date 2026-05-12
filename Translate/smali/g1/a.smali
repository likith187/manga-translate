.class public final synthetic Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lz0/b;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lz0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lg1/a;->b:Lz0/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg1/a;->a:Ljava/lang/Runnable;

    iget-object p0, p0, Lg1/a;->b:Lz0/b;

    invoke-static {v0, p0}, Lg1/b;->a(Ljava/lang/Runnable;Lz0/b;)V

    return-void
.end method
