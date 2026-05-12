.class public final synthetic Lcom/airbnb/lottie/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/i0$a;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/i0;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/i0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/x;->a:Lcom/airbnb/lottie/i0;

    iput p2, p0, Lcom/airbnb/lottie/x;->b:I

    iput p3, p0, Lcom/airbnb/lottie/x;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/j;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/x;->a:Lcom/airbnb/lottie/i0;

    iget v1, p0, Lcom/airbnb/lottie/x;->b:I

    iget p0, p0, Lcom/airbnb/lottie/x;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/airbnb/lottie/i0;->i(Lcom/airbnb/lottie/i0;IILcom/airbnb/lottie/j;)V

    return-void
.end method
