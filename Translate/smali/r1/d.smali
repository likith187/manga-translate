.class public abstract Lr1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/airbnb/lottie/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/c;

    invoke-direct {v0}, Lr1/c;-><init>()V

    sput-object v0, Lr1/d;->a:Lcom/airbnb/lottie/l0;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lr1/d;->a:Lcom/airbnb/lottie/l0;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/l0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lr1/d;->a:Lcom/airbnb/lottie/l0;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/l0;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lr1/d;->a:Lcom/airbnb/lottie/l0;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/l0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lr1/d;->a:Lcom/airbnb/lottie/l0;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
