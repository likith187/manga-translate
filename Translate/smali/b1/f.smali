.class public abstract Lb1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/c;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/f;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb1/f;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb1/f;->a:Ljava/lang/Object;

    return-void
.end method
