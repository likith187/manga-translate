.class public final synthetic Lcom/airbnb/lottie/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/m;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/m;->a:Ljava/io/InputStream;

    invoke-static {p0}, Lcom/airbnb/lottie/r;->f(Ljava/io/InputStream;)V

    return-void
.end method
