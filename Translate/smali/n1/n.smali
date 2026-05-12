.class public Ln1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm1/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm1/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/n;->a:Ljava/lang/String;

    iput-object p2, p0, Ln1/n;->b:Lm1/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/q;

    invoke-direct {p2, p1, p3, p0}, Li1/q;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/n;)V

    return-object p2
.end method

.method public b()Lm1/m;
    .locals 0

    iget-object p0, p0, Ln1/n;->b:Lm1/m;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/n;->a:Ljava/lang/String;

    return-object p0
.end method
