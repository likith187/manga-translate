.class public final synthetic Lcom/airbnb/lottie/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/e;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/airbnb/lottie/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
