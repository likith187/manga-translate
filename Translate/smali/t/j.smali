.class public final synthetic Lt/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt/h$e;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lt/h$e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/j;->a:Lt/h$e;

    iput p2, p0, Lt/j;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lt/j;->a:Lt/h$e;

    iget p0, p0, Lt/j;->b:I

    invoke-static {v0, p0}, Lt/h$e;->b(Lt/h$e;I)V

    return-void
.end method
