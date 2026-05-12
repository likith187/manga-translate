.class public final synthetic Lm7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo7/c;


# direct methods
.method public synthetic constructor <init>(Lo7/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/h;->a:Lo7/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lm7/h;->a:Lo7/c;

    invoke-static {p0}, Lm7/k;->e(Lo7/c;)V

    return-void
.end method
