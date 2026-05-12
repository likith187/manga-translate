.class public Lb1/g;
.super Lb1/f;
.source "SourceFile"

# interfaces
.implements Lb1/d;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lb1/f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lb1/f;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
