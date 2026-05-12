.class public final Lcom/ai/slp/library/mt/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ai/slp/library/mt/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ai/slp/library/mt/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ai/slp/library/mt/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ai/slp/library/mt/c$a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ai/slp/library/mt/c$a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ai/slp/library/mt/c$a$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/c$a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/c$a$a;->a:Ljava/lang/String;

    return-object p0
.end method
