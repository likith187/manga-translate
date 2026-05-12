.class public Ln1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lm1/b;


# direct methods
.method public constructor <init>(Lm1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/a;->a:Lm1/b;

    return-void
.end method


# virtual methods
.method public a()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/a;->a:Lm1/b;

    return-object p0
.end method
