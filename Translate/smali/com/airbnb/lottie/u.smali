.class public final synthetic Lcom/airbnb/lottie/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/i0$a;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/i0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/i0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/u;->a:Lcom/airbnb/lottie/i0;

    iput p2, p0, Lcom/airbnb/lottie/u;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/j;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/u;->a:Lcom/airbnb/lottie/i0;

    iget p0, p0, Lcom/airbnb/lottie/u;->b:I

    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/i0;->h(Lcom/airbnb/lottie/i0;ILcom/airbnb/lottie/j;)V

    return-void
.end method
