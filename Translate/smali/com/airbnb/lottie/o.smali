.class public final synthetic Lcom/airbnb/lottie/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/k0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/airbnb/lottie/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Lcom/airbnb/lottie/j;

    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/r;->d(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/j;)V

    return-void
.end method
